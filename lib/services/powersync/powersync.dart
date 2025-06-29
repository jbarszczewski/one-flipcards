import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:powersync/powersync.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'schema.dart';

@Riverpod(keepAlive: true)
Future<PowerSyncDatabase> powerSyncInstance(Ref ref) async {
  final db = PowerSyncDatabase(
    schema: schema,
    path: await _getDatabasePath(),
    logger: attachedLogger,
  );
  await db.initialize();

  SupabaseConnector? currentConnector;
  if (ref.read(sessionProvider).value != null) {
    currentConnector = SupabaseConnector();
    db.connect(connector: currentConnector);
  }

  final instance = Supabase.instance.client.auth;
  final sub = instance.onAuthStateChange.listen((data) async {
    final event = data.event;
    if (event == AuthChangeEvent.signedIn) {
      currentConnector = SupabaseConnector();
      db.connect(connector: currentConnector!);
    } else if (event == AuthChangeEvent.signedOut) {
      currentConnector = null;
      await db.disconnect();
    } else if (event == AuthChangeEvent.tokenRefreshed) {
      currentConnector?.prefetchCredentials();
    }
  });
  ref.onDispose(sub.cancel);
  ref.onDispose(db.close);

  return db;
}

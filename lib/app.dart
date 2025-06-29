import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/login_screen.dart';
import 'features/dashboard/presentation/dashboard_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "One Flipcards",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _debugBanner(
        child: supabase.auth.currentSession == null ? const LoginScreen() : const DashboardScreen(),
        show: kDebugMode,
      ),
    );
  }

  Widget _debugBanner({required Widget child, bool show = true}) => show
      ? Banner(
          location: BannerLocation.topStart,
          message: "dev",
          color: Colors.green.withAlpha(150),
          textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.0, letterSpacing: 1.0),
          textDirection: TextDirection.ltr,
          child: child,
        )
      : Container(child: child);
}

import 'package:powersync/powersync.dart';

const schema = Schema([
  Table('cards', [
    Column.text('created_at'),
    Column.text('updated_at'),
    Column.text('user_id'),
    Column.text('front'),
    Column.text('back'),
    Column.integer('is_public'),
  ]),
]);

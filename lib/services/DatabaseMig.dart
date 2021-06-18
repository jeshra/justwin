import 'package:get_it/get_it.dart';
import 'package:justwin/models/CustomerStageModel.dart';
import 'package:sqflite_migration_service/sqflite_migration_service.dart';

import 'DatabaseService.dart';

final GetIt getIt = GetIt.instance;

//class SingleDonObjects {
setup() {
  getIt.registerSingleton<DatabaseService>(DatabaseService());
  getIt.registerSingleton<DatabaseMigrationService>(DatabaseMigrationService());
}

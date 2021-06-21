import 'package:justwin/services/locator.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_migration_service/sqflite_migration_service.dart';

class DatabaseService {
  late int i;

  static final DatabaseService instance = DatabaseService._privateConstructor();

  DatabaseService._privateConstructor();

  factory DatabaseService() {
    return instance;
  }

  static final _migrationService = locator<DatabaseMigrationService>();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'Justwin');
    _database = await openDatabase(path, version: 1);
    await _migrationService.runMigration(
      _database,
      migrationFiles: ['1_create_schema.sql'],
      verbose: true,
    );
    return _database!;
  }

  Future close() async {
    final db = await DatabaseService().database;

    db.close();
  }

  Future<Database> method1() async {
    final db = await DatabaseService().database;
    return db;
  }
}

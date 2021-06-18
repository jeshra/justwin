import 'package:justwin/models/CustomerStageModel.dart';
import 'package:justwin/services/DatabaseMig.dart';
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
  DatabaseMigrationService _migrationService = new DatabaseMigrationService();

  //static final _migrationService = getIt<DatabaseMigrationService>();



  //static final _database = getIt<DatabaseService>().database;

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('Justwin');
    return _database!;
  }

  Future<Database> _initDB(String dbName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);
    //return await openDatabase(path, version: 1, onCreate: _createDB);
    final db = await openDatabase(path, version: 1);
/*    await _migrationService.runMigration(db, migrationFiles: [
      'assets/sql/1_create_schema.sql',
      'assets/sql/2_add_description.sql',
    ]);*/
    return db;
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

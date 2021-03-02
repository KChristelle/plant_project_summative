import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  //define constants
  static final _dbName = 'myDatabase.db';
  static final _dbVersion = 1;
  static final _tableNamePlants = "plants";
  static final _tableNameUsers = "users";

  static final columnPlantId = '_id';
  static final columnPlantName = 'plantName';
  static final columnPlantHealth = 'plantHealth';

  static final columnUserId = '_id';
  static final columnEmail = 'Email';
  static final columnPW = 'Password';

  //DB constructor
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _initDatabase();
      return _database;
    }
  }

  _initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableNamePlants(
      $columnPlantId INTEGER PRIMARY KEY, 
      $columnPlantName TEXT NOT NULL, 
      $columnPlantHealth TEXT NOT NULL);
      ''');
    await db.execute('''
      CREATE TABLE $_tableNameUsers(
      $columnUserId INTEGER PRIMARY KEY, 
      $columnEmail TEXT NOT NULL, 
      $columnPW TEXT NOT NULL)   
      ''');
  }

  //Basic Crud template operations

  // Future<int> insert(Map<String, dynamic> row) async {
  //   Database db = await instance.database;
  //   return await db.insert(_tableName, row);
  // }
  //
  // Future<List<Map<String, dynamic>>> queryAll() async {
  //   Database db = await instance.database;
  //   return await db.query(_tableName);
  // }
  //
  // Future<int> update(Map<String, dynamic> row) async {
  //   Database db = await instance.database;
  //   int id = row[columnId];
  //   return await db
  //       .update(_tableName, row, where: '$columnId = ?', whereArgs: [id]);
  // }
  //
  // Future<int> delete(int id) async {
  //   Database db = await instance.database;
  //   return await db.delete(_tableName, where: '$columnId =?', whereArgs: [id]);
  // }

  Future<int> newUser(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tableNameUsers, row);
  }


  Future<int> checkEmail(dynamic email) async {
    Database db = await instance.database;
    int check = 1;
    var rows = await db.query(_tableNameUsers);

    for(final row in rows){
      if(email == row[columnEmail])
      {
        check = 0;
      }
    }
    return check;
  }
  Future<int> checkUser(dynamic email, dynamic password) async {
    Database db = await instance.database;
    int check = 0;
    var rows = await db.query(_tableNameUsers);

    for(final row in rows){

      if((email == row[columnEmail])&(password == row[columnPW]))
      {
        check = row[columnUserId];
      }
    }
    return check;
  }


}

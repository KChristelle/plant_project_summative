import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'user.dart';

class DatabaseHelper {
  //define constants
  static final _dbName = 'myDatabase.db';
  static final _dbVersion = 2;
  static final _tablePlants = "plants";
  static final _tableUsers = "users";
  static final _tableInventory = "userInventory";

  static final columnPlantId = '_id';
  static final columnPlantName = 'plantName';
  static final columnPlantDetails = 'plantDetails';

  static final columnUserId = '_id';
  static final columnEmail = 'Email';
  static final columnPW = 'Password';

  static final columnInventoryId = '_id';
  static final columnUID = 'UserID';
  static final columnPID = 'PlantID';
  static final columnStatus = 'Status';
  static final columnHealth = 'Health';
  static final columnSun = 'Sun';
  static final columnWater = 'Water';
  static final columnNut = 'Nutrient';


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
    //await deleteDatabase(path);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tablePlants(
      $columnPlantId INTEGER PRIMARY KEY, 
      $columnPlantName TEXT NOT NULL, 
      $columnPlantDetails TEXT NOT NULL);
      ''');
    await db.execute('''
      CREATE TABLE $_tableUsers(
      $columnUserId INTEGER PRIMARY KEY, 
      $columnEmail TEXT NOT NULL, 
      $columnPW TEXT NOT NULL)   
      ''');
    await db.execute('''
      CREATE TABLE $_tableInventory(
      $columnInventoryId INTEGER PRIMARY KEY, 
      $columnUID TEXT NOT NULL, 
      $columnPID TEXT NOT NULL, 
      $columnStatus TEXT NOT NULL, 
      $columnHealth INTEGER NOT NULL, 
      $columnWater INTEGER NOT NULL, 
      $columnSun INTEGER NOT NULL,
      $columnNut INTEGER NOT NULL)   
      ''');
  }

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
    return await db.insert(_tableUsers, row);
  }


  Future<int> checkEmail(dynamic email) async {
    Database db = await instance.database;
    int check = 1;
    var rows = await db.query(_tableUsers);

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
    var rows = await db.query(_tableUsers);

    for(final row in rows){

      if((email == row[columnEmail])&(password == row[columnPW]))
      {
        check = row[columnUserId];
      }
    }
    return check;
  }

  Future<int> newPlant(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tablePlants, row);
  }

  Future<int> newUserPlant(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tableInventory, row);
  }

  Future<int> updatePlantHealth(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnInventoryId];
    return await db
        .update(_tableInventory, row, where: '$columnInventoryId = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> displayInventory() async {
    Database db = await instance.database;

    return await db
        .query(_tableInventory, where: "$columnUID = ?", whereArgs: [userID]);
  }

  Future<int> getInventoryLength() async{
    List<Map<String, dynamic>> userInventory =  await displayInventory();
    return userInventory.length;
  }

}

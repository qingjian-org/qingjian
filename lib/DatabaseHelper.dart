import 'dart:convert';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'Products.dart';

class DatabaseHelper {
  static final _databaseName = "Products.db"; //数据库名称
  static final _databaseVersion = 1; //数据库版本
  static final table = 'Products_table'; //数据表名称
  static final columnId = 'id'; //id属性
  static final columnBrand = 'brand'; //品牌属性
  static final columnProduct_Name = 'product_name'; //产品名属性
  static final columnProduct_Style = 'product_style'; //产品类型属性
  static final columnProduceDate = 'produceDate'; //生产日期
  static final columnOpenDate = 'openDate'; //启动日期
  static final columnOutDate = 'outDate'; //到期日期
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute('''
           CREATE TABLE $table ( 
             $columnId INTEGER PRIMARY KEY AUTOINCREMENT, 
             $columnBrand TEXT NOT NULL,
             $columnProduct_Name TEXT NOT NULL,
             $columnProduct_Style TEXT NOT NULL,
             $columnProduceDate TEXT NOT NULL,
             $columnOpenDate TEXT NOT NULL,
             $columnOutDate TEXT NOT NULL
           ) 
            ''');
  }

  Future<int> insert(Products products) async {
    Database? db = await instance.database; //相当于是启动数据库进程的命令
    var res = await db!.insert(table, {
      'brand': products.brand,
      'product_name': products.product_name,
      'product_style': products.product_style,
      'produceDate': products.produceDate,
      'openDate': products.openDate,
      'outDate': products.outDate
    });
    return res;
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }

  // Queries rows based on the argument received
  Future<List<Map<String, dynamic>>> queryRowsBrand(key) async {
    Database? db = await instance.database;
    return await db!.query(table,
        where: "$columnBrand LIKE '%$key%' GROUP BY $columnBrand");
  }

  Future<List<Map<String, dynamic>>> queryRowsProductname(key) async {
    Database? db = await instance.database;
    return await db!.query(table,
        where:
            "$columnProduct_Name LIKE '%$key%' GROUP BY $columnProduct_Name");
  }

  Future<List<Map<String, dynamic>>> queryRowsProductstyle(key) async {
    Database? db = await instance.database;
    return await db!.query(table,
        where:
            "$columnProduct_Style LIKE '%$key%' GROUP BY $columnProduct_Style");
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  Future<int?> queryRowCount() async {
    Database? db = await instance.database;
    return Sqflite.firstIntValue(
        await db!.rawQuery('SELECT COUNT(*) FROM $table'));
  }

  Future<int> delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }

  // Future<void> clearTable() async {
  //   Database? db = await instance.database;
  //   return await db.rawQuery(table,"DELETE FROM $table");
  // }

  Future<int> update(Products products) async {
    Database? db = await instance.database;
    int id = products.toMap()['id'];
    return await db!.update(
        table,
        {
          'brand': products.brand,
          'product_name': products.product_name,
          'product_style': products.product_style,
          'produceDate': products.produceDate,
          'openDate': products.openDate,
          'outDate': products.outDate
        },
        where: '$columnId = ?',
        whereArgs: [id]);
  }
}

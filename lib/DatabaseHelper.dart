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
             $columnProduct_Style YEXT NOT NULL
           ) 
            ''');
  }

  Future<int> insert(Products products) async {
    Database? db = await instance.database; //相当于是启动数据库进程的命令
    var res = await db!.insert(table, {
      'brand': products.brand,
      'product_name': products.product_name,
      'product_style': products.product_style
    });
    return res;
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }

  // Queries rows based on the argument received
  Future<List<Map<String, dynamic>>> queryRows(product_name) async {
    Database? db = await instance.database;
    return await db!
        .query(table, where: "$columnProduct_Name LIKE '%$product_name%'");
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
          'product_style': products.product_style
        },
        where: '$columnId = ?',
        whereArgs: [id]);
  }
}

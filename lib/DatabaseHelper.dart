import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'Products.dart';

class DatabaseHelper {
  static const _databaseName = "Products.db"; //数据库名称
  static const _databaseVersion = 1; //数据库版本
  static const table = 'Products_table'; //数据表名称
  static const columnId = 'id'; //id属性
  static const columnBrand = 'brand'; //品牌属性
  static const columnProductName = 'product_name'; //产品名属性
  static const columnProductStyle = 'product_style'; //产品类型属性
  static const columnProduceDate = 'produceDate'; //生产日期
  static const columnOpenDate = 'openDate'; //启动日期
  static const columnOutDate = 'outDate'; //到期日期
  static const columnImage = 'image'; //上传图片
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
             $columnProductName TEXT NOT NULL,
             $columnProductStyle TEXT NOT NULL,
             $columnProduceDate TEXT NOT NULL,
             $columnOpenDate TEXT NOT NULL,
             $columnOutDate TEXT NOT NULL,
             $columnImage TEXT NOT NULL
           ) 
            ''');
  }

  Future<int> insert(Products products) async {
    Database? db = await instance.database; //相当于是启动数据库进程的命令
    var res = await db!.insert(table, {
      columnBrand: products.brand,
      columnProductName: products.productName,
      columnProductStyle: products.productStyle,
      columnProduceDate: products.produceDate,
      columnOpenDate: products.openDate,
      columnOutDate: products.outDate,
      columnImage: products.image
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
        where: "$columnProductName LIKE '%$key%' GROUP BY $columnProductName");
  }

  Future<List<Map<String, dynamic>>> queryRowsProductstyle(key) async {
    Database? db = await instance.database;
    return await db!.query(table,
        where:
            "$columnProductStyle LIKE '%$key%' GROUP BY $columnProductStyle");
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
          columnBrand: products.brand,
          columnProductName: products.productName,
          columnProductStyle: products.productStyle,
          columnProduceDate: products.produceDate,
          columnOpenDate: products.openDate,
          columnOutDate: products.outDate,
          columnImage: products.image
        },
        where: '$columnId = ?',
        whereArgs: [id]);
  }
}

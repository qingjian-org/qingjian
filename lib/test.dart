import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';
import 'Products.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final dbHelper = DatabaseHelper.instance;

  List<Products> products = [];
  List<Products> productsByName = [];

  //controllers used in insert operation UI
  TextEditingController brandController = TextEditingController();
  TextEditingController product_nameController = TextEditingController();
  TextEditingController product_styleController = TextEditingController();

  //controllers used in update operation UI
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController brandUpdateController = TextEditingController();
  TextEditingController product_nameUpdateController = TextEditingController();
  TextEditingController product_styleUpdateController = TextEditingController();

  //controllers used in delete operation UI
  TextEditingController idDeleteController = TextEditingController();

  //controllers used in query operation UI
  TextEditingController queryController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "View",
              ),
              Tab(
                text: "Query",
              ),
              Tab(
                text: "Update",
              ),
              Tab(
                text: "Delete",
              ),
            ],
          ),
          title: Text('数据库暂时存储查询'),
        ),
        body: TabBarView(
          children: [
            //view
            Container(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: products.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == products.length) {
                    return RaisedButton(
                      child: Text('Refresh'),
                      onPressed: () {
                        setState(() {
                          _queryAll();
                        });
                      },
                    );
                  }
                  return Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        '[${products[index].id}] ${products[index].brand} - ${products[index].product_name} - ${products[index].product_style}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
            //query
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: queryController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '关键词',
                      ),
                      onChanged: (text) {
                        if (text.length >= 1) {
                          setState(() {
                            _query(text);
                          });
                        } else {
                          setState(() {
                            productsByName.clear();
                          });
                        }
                      },
                    ),
                    height: 100,
                  ),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: productsByName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                              '[${products[index].id}] ${products[index].brand} - ${products[index].product_name} - ${products[index].product_style}',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            //update
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'id',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: brandUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'brand',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: product_nameUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'product_name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: product_styleUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'product_style',
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Update products'),
                    onPressed: () {
                      int id = int.parse(idUpdateController.text);
                      String brand = brandUpdateController.text;
                      String product_name = product_nameUpdateController.text;
                      String product_style = product_styleUpdateController.text;
                      _update(id, brand, product_name, product_style);
                    },
                  ),
                ],
              ),
            ),
            //delete
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idDeleteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'id',
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Delete'),
                    onPressed: () {
                      int id = int.parse(idDeleteController.text);
                      _delete(id);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _queryAll() async {
    //view
    final allRows = await dbHelper.queryAllRows();
    products.clear();
    allRows.forEach((row) => products.add(Products.fromMap(row)));
    _showMessageInScaffold('Query done.');
    setState(() {});
  }

  void _query(key) async {
    //query
    final allRows = await dbHelper.queryRows(key);
    productsByName.clear();
    allRows.forEach((row) => productsByName.add(Products.fromMap(row)));
  }

  void _update(id, brand, product_name, product_style) async {
    // row to update
    Products products = Products(id, brand, product_name, product_style);
    final rowsAffected = await dbHelper.update(products);
    _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}

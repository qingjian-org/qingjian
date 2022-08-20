import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';
import 'Products.dart';

class DataBase extends StatefulWidget {
  const DataBase({Key? key, this.restorationId}) : super(key: key);

  final String? restorationId;

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<DataBase> with RestorationMixin {
  final dbHelper = DatabaseHelper.instance;

  List<Products> products = [];
  List<Products> productsByName = [];

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
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _ProduceDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  final RestorableDateTime _OpenDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  final RestorableDateTime _OutDate = RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?>
      _restorableProduceDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectProduceDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _ProduceDate.value.millisecondsSinceEpoch,
      );
    },
  );

  late final RestorableRouteFuture<DateTime?>
      _restorableOpenDatePickerRouteFuture = RestorableRouteFuture<DateTime?>(
    onComplete: _selectOpenDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _OpenDate.value.millisecondsSinceEpoch,
      );
    },
  );

  late final RestorableRouteFuture<DateTime?>
      _restorableOutDatePickerRouteFuture = RestorableRouteFuture<DateTime?>(
    onComplete: _selectOutDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _OutDate.value.millisecondsSinceEpoch,
      );
    },
  );

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_ProduceDate, 'produce_date');
    registerForRestoration(
        _restorableProduceDatePickerRouteFuture, 'produce_date_picker');
    registerForRestoration(_OpenDate, 'open_date');
    registerForRestoration(_OutDate, 'out_date');
    registerForRestoration(
        _restorableOpenDatePickerRouteFuture, 'open_date_picker');
    registerForRestoration(
        _restorableOutDatePickerRouteFuture, 'out_date_picker');
  }

  void _selectProduceDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _ProduceDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_ProduceDate.value.day}/${_ProduceDate.value.month}/${_ProduceDate.value.year}'),
        ));
      });
    }
  }

  void _selectOpenDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _OpenDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_OpenDate.value.day}/${_OpenDate.value.month}/${_OpenDate.value.year}'),
        ));
      });
    }
  }

  void _selectOutDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _OutDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_OutDate.value.day}/${_OutDate.value.month}/${_OutDate.value.year}'),
        ));
      });
    }
  }

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
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
                          // ignore: avoid_print
                          // print(
                          //   '[${products[index].id}] ${products[index].brand} - ${products[index].product_name} - ${products[index].product_style}- ${products[index].produceDate}- ${products[index].openDate}- ${products[index].outDate}',
                          // );
                        });
                      },
                    );
                  }
                  return Container(
                    height: 100,
                    child: Center(
                      child: Text(
                        '[${products[index].id}] ${products[index].brand} - ${products[index].product_name} - ${products[index].product_style}- ${products[index].produceDate}- ${products[index].openDate}- ${products[index].outDate}',
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
                          height: 100,
                          margin: EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                              '[${productsByName[index].id}] ${productsByName[index].brand} - ${productsByName[index].product_name} - ${productsByName[index].product_style}- ${productsByName[index].produceDate}- ${productsByName[index].openDate}- ${productsByName[index].outDate}',
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
                      String ProduceDate = _ProduceDate.toString();
                      String OpenDate = _OpenDate.toString();
                      String OutDate = _OutDate.toString();
                      String brand = brandUpdateController.text;
                      String product_name = product_nameUpdateController.text;
                      String product_style = product_styleUpdateController.text;
                      _update(id, brand, product_name, product_style,
                          ProduceDate, OpenDate, OutDate);
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
    allRows.forEach((row) => {
          // ignore: unnecessary_null_comparison
          if (products == null)
            // ignore: avoid_print
            {print("数据为空")}
          else
            {products.add(Products.fromMap(row))}
        });
    _showMessageInScaffold('Query done.');
    setState(() {});
  }

  void _query(key) async {
    //query
    final allRows = await dbHelper.queryRowsBrand(key);
    productsByName.clear();
    // ignore: avoid_function_literals_in_foreach_calls
    allRows.forEach((row) => productsByName.add(Products.fromMap(row)));
  }

  void _update(id, brand, product_name, product_style, productDate, openDate,
      outDate) async {
    // row to update
    Products products = Products(
        id, brand, product_name, product_style, productDate, openDate, outDate);
    final rowsAffected = await dbHelper.update(products);
    _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}

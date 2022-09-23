// ignore_for_file: avoid_function_literals_in_foreach_calls, deprecated_member_use

import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';
import 'Products.dart';

class DataBase extends StatefulWidget {
  const DataBase({Key? key, this.restorationId}) : super(key: key);

  final String? restorationId;

  @override
  _DataBaseState createState() => _DataBaseState();
}

class _DataBaseState extends State<DataBase> with RestorationMixin {
  final dbHelper = DatabaseHelper.instance;

  List<Products> products = [];
  List<Products> productsByName = [];

  // controllers used in update operation UI
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController brandUpdateController = TextEditingController();
  TextEditingController productNameUpdateController = TextEditingController();
  TextEditingController productStyleUpdateController = TextEditingController();

  // controllers used in delete operation UI
  TextEditingController idDeleteController = TextEditingController();

  // controllers used in query operation UI
  TextEditingController queryController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _produceDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  final RestorableDateTime _openDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  final RestorableDateTime _outDate = RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?>
      _restorableProduceDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectProduceDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _produceDate.value.millisecondsSinceEpoch,
      );
    },
  );

  late final RestorableRouteFuture<DateTime?>
      _restorableOpenDatePickerRouteFuture = RestorableRouteFuture<DateTime?>(
    onComplete: _selectOpenDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _openDate.value.millisecondsSinceEpoch,
      );
    },
  );

  late final RestorableRouteFuture<DateTime?>
      _restorableOutDatePickerRouteFuture = RestorableRouteFuture<DateTime?>(
    onComplete: _selectOutDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _outDate.value.millisecondsSinceEpoch,
      );
    },
  );

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_produceDate, 'produce_date');
    registerForRestoration(
        _restorableProduceDatePickerRouteFuture, 'produce_date_picker');
    registerForRestoration(_openDate, 'open_date');
    registerForRestoration(_outDate, 'out_date');
    registerForRestoration(
        _restorableOpenDatePickerRouteFuture, 'open_date_picker');
    registerForRestoration(
        _restorableOutDatePickerRouteFuture, 'out_date_picker');
  }

  void _selectProduceDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _produceDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_produceDate.value.day}/${_produceDate.value.month}/${_produceDate.value.year}'),
        ));
      });
    }
  }

  void _selectOpenDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _openDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_openDate.value.day}/${_openDate.value.month}/${_openDate.value.year}'),
        ));
      });
    }
  }

  void _selectOutDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _outDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_outDate.value.day}/${_outDate.value.month}/${_outDate.value.year}'),
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
          bottom: const TabBar(
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
          title: const Text('数据库暂时存储查询'),
        ),
        body: TabBarView(
          children: [
            //view
            ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: products.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == products.length) {
                  return RaisedButton(
                    child: const Text('Refresh'),
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
                return SizedBox(
                  height: 100,
                  child: Center(
                    child: Text(
                      '[${products[index].id}] ${products[index].brand} - ${products[index].productName} - ${products[index].productStyle}- ${products[index].produceDate}- ${products[index].openDate}- ${products[index].outDate}',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
            ),
            //query
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 100,
                    child: TextField(
                      controller: queryController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '关键词',
                      ),
                      onChanged: (text) {
                        if (text.isNotEmpty) {
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
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: productsByName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 100,
                          margin: const EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                              '[${productsByName[index].id}] ${productsByName[index].brand} - ${productsByName[index].productName} - ${productsByName[index].productStyle}- ${productsByName[index].produceDate}- ${productsByName[index].openDate}- ${productsByName[index].outDate}',
                              style: const TextStyle(fontSize: 18),
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
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: idUpdateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'id',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: brandUpdateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'brand',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: productNameUpdateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'product_name',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: productStyleUpdateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'product_style',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: productStyleUpdateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'product_style',
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: const Text('Update products'),
                    onPressed: () {
                      _update(
                          int.parse(idUpdateController.text),
                          brandUpdateController.text,
                          productNameUpdateController.text,
                          productStyleUpdateController.text,
                          _produceDate.toString(),
                          _openDate.toString(),
                          _outDate.toString(),
                          'i');
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
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: idDeleteController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'id',
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: const Text('Delete'),
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
  }

  void _query(key) async {
    //query
    final allRows = await dbHelper.queryRowsBrand(key);
    productsByName.clear();
    allRows.forEach((row) => productsByName.add(Products.fromMap(row)));
  }

  void _update(id, brand, productName, productStyle, productDate, openDate,
      outDate, image) async {
    // row to update
    Products products = Products(id, brand, productName, productStyle,
        productDate, openDate, outDate, image);
    final rowsAffected = await dbHelper.update(products);
    _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}

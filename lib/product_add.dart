import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';
import 'Products.dart';
import 'package:intl/intl.dart';

class ProductAddPage extends StatefulWidget {
  const ProductAddPage({Key? key, this.restorationId}) : super(key: key);

  final String? restorationId;
  @override
  _ProductAddState createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAddPage> with RestorationMixin {
  final dbHelper = DatabaseHelper.instance; //启动数据库
// Initial Selected Value
  String brand_name = '资生堂';
  String product_name = '水乳';
  String product_style = '清洁类';

// List of items in our dropdown menu
  var items_brand_name = [
    '资生堂',
    '姿色',
    '兰蔻',
    'AHC',
    '蜜思婷',
  ];

  var items_product_name = [
    '水乳',
    '隔离',
    '防晒霜',
    '粉底液',
    '气垫',
  ];

  var items_product_style = [
    '清洁类',
    '保湿类',
    '营养类',
    '美妆类',
    '护理类',
  ];

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

  // var map = Map();
  // var produce_year, produce_month, produce_day;
  // var start_year, start_month, start_day;
  // var end_year, end_month, end_day;

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'One';
    DropdownButton<String> brandControl = DropdownButton<String>(
      value: brand_name,

      // icon: const Icon(Icons.keyboard_arrow_down),
      items: items_brand_name.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(
            items,
            style: const TextStyle(fontSize: 14),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          brand_name = newValue!;
          // map['品牌名'] = brand_name;
        });
      },
    );
    DropdownButton<String> productNameControl = DropdownButton<String>(
      value: product_name,
      // icon: const Icon(Icons.keyboard_arrow_down),
      items: items_product_name.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(
            items,
            style: const TextStyle(fontSize: 14),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          product_name = newValue!;
          // map['产品名'] = product_name;
        });
      },
    );
    DropdownButton<String> productStyleControl = DropdownButton<String>(
      value: product_style,
      // icon: const Icon(Icons.keyboard_arrow_down),
      items: items_product_style.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(
            items,
            style: const TextStyle(fontSize: 14),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          product_style = newValue!;
          // map['产品类型'] = product_style;
        });
      },
    );
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: <Widget>[
              //第一部分
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 180,
                      child: Image.asset(
                        "images/product_add/product1.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Expanded(
                                flex: 2,
                                child: Text(
                                  "品牌名:",
                                  style: (TextStyle(fontSize: 16)),
                                )),
                            Expanded(flex: 3, child: brandControl)
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const Expanded(
                                flex: 2,
                                child: Text("产品名:",
                                    style: (TextStyle(fontSize: 16)))),
                            Expanded(
                              flex: 3,
                              child: productNameControl,
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const Expanded(
                                flex: 2,
                                child: Text("产品类型:",
                                    style: (TextStyle(fontSize: 16)))),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  child: productStyleControl,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 5),
              const Divider(
                color: Color.fromARGB(255, 84, 82, 82),
              ),
              //第二部分
              Row(
                children: <Widget>[
                  const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            "生产日期",
                            style: TextStyle(
                              fontFamily: 'Sitka Text',
                              fontSize: 14,
                              color: Color(0xff000000),
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                  color: Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: OutlinedButton(
                          onPressed: () {
                            _restorableProduceDatePickerRouteFuture.present();
                          },
                          child: SizedBox(
                            width: 177.0,
                            height: 19.0,
                            child: Text.rich(
                              TextSpan(
                                style: const TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 14,
                                  color: Color(0xff818080),
                                  letterSpacing: 2.8000000000000003,
                                  shadows: [
                                    Shadow(
                                      color: Color(0x29000000),
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                    )
                                  ],
                                ),
                                children: [
                                  TextSpan(
                                    text: _produceDate.value.year.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '年   ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(
                                    text: _produceDate.value.month.toString(),
                                    style: const TextStyle(
                                      letterSpacing: 2.24,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '月 ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(
                                    text: _produceDate.value.day.toString(),
                                    style: const TextStyle(
                                      letterSpacing: 2.24,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '日',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: const TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ))),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: <Widget>[
                  const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            "启用日期",
                            style: TextStyle(
                              fontFamily: 'Sitka Text',
                              fontSize: 14,
                              color: Color(0xff000000),
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                  color: Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: OutlinedButton(
                          onPressed: () {
                            _restorableOpenDatePickerRouteFuture.present();
                          },
                          child: SizedBox(
                            width: 177.0,
                            height: 19.0,
                            child: Text.rich(
                              TextSpan(
                                style: const TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 14,
                                  color: Color(0xff818080),
                                  letterSpacing: 2.8000000000000003,
                                  shadows: [
                                    Shadow(
                                      color: Color(0x29000000),
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                    )
                                  ],
                                ),
                                children: [
                                  TextSpan(
                                    text: _openDate.value.year.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '年   ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(
                                    text: _openDate.value.month.toString(),
                                    style: const TextStyle(
                                      letterSpacing: 2.24,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '月 ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(
                                    text: _openDate.value.day.toString(),
                                    style: const TextStyle(
                                      letterSpacing: 2.24,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '日',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: const TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ))),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: <Widget>[
                  const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            "到期日期",
                            style: TextStyle(
                              fontFamily: 'Sitka Text',
                              fontSize: 14,
                              color: Color(0xff000000),
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                  color: Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: OutlinedButton(
                          onPressed: () {
                            _restorableOutDatePickerRouteFuture.present();
                          },
                          child: SizedBox(
                            width: 177.0,
                            height: 19.0,
                            child: Text.rich(
                              TextSpan(
                                style: const TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 14,
                                  color: Color(0xff818080),
                                  letterSpacing: 2.8000000000000003,
                                  shadows: [
                                    Shadow(
                                      color: Color(0x29000000),
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                    )
                                  ],
                                ),
                                children: [
                                  TextSpan(
                                    text: _outDate.value.year.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '年   ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(
                                    text: _outDate.value.month.toString(),
                                    style: const TextStyle(
                                      letterSpacing: 2.24,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '月 ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(
                                    text: _outDate.value.day.toString(),
                                    style: const TextStyle(
                                      letterSpacing: 2.24,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '日',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: const TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ))),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 84, 82, 82),
              ),
              //第三部分
              Row(children: <Widget>[
                const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "标签",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Wrap(
                      children: const <Widget>[
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ))),
                      ],
                    ))
              ]),

              Row(
                children: <Widget>[
                  const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            "特性标签",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Wrap(children: const <Widget>[
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 20,
                                  width: 70,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                )))
                      ]))
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 84, 82, 82),
              ),
              //第四部分
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      String ProduceDate = _produceDate.value.toString();
                      String OpenDate = _openDate.value.toString();
                      String OutDate = _outDate.value.toString();
                      _insert(brand_name, product_name, product_style,
                          ProduceDate, OpenDate, OutDate);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                    ),
                    child: const Text(
                      "保存",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              )
            ])));
  }

  void _insert(
      brand, productName, productStyle, produceDate, openDate, outDate) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnBrand: brand,
      DatabaseHelper.columnProductName: productName,
      DatabaseHelper.columnProductStyle: productStyle,
      DatabaseHelper.columnProduceDate: produceDate.toString(),
      DatabaseHelper.columnOpenDate: openDate.toString(),
      DatabaseHelper.columnOutDate: outDate.toString(),
      DatabaseHelper.columnImage: 'i'
    };
    Products products = Products.fromMap(row);
    final id = await dbHelper.insert(products);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('inserted row id: $id'),
    ));
  }

  @override
  String? get restorationId => widget.restorationId;
}

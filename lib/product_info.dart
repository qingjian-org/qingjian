import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'DatabaseHelper.dart';
import 'Products.dart';
import 'makeup_table.dart';

class ProductInfoPage extends StatefulWidget {
  const ProductInfoPage({Key? key, this.restorationId}) : super(key: key);

  final String? restorationId;
  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage>
    with RestorationMixin {
  final dbHelper = DatabaseHelper.instance; //启动数据库

  List<Products> products = [];
  List<Products> productsByName = [];
  var map = new Map();

  TextEditingController brandControl = new TextEditingController();
  TextEditingController product_nameControl = new TextEditingController();
  TextEditingController product_styleControl = new TextEditingController();

  void _insert(brand, product_name, product_style, produceDate, openDate,
      outDate) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnBrand: brand,
      DatabaseHelper.columnProduct_Name: product_name,
      DatabaseHelper.columnProduct_Style: product_style,
      DatabaseHelper.columnProduceDate: produceDate.toString(),
      DatabaseHelper.columnOpenDate: openDate.toString(),
      DatabaseHelper.columnOutDate: outDate.toString(),
    };
    Products products = Products.fromMap(row);
    final id = await dbHelper.insert(products);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('inserted row id: $id'),
    ));
  }

  void _querybrand(key) async {
    //query
    final allRows = await dbHelper.queryRowsBrand(key);
    productsByName.clear();
    // ignore: avoid_function_literals_in_foreach_calls
    allRows.forEach((row) => productsByName.add(Products.fromMap(row)));
  }

  void _queryproductname(key) async {
    //query
    final allRows = await dbHelper.queryRowsProductname(key);
    productsByName.clear();
    // ignore: avoid_function_literals_in_foreach_calls
    allRows.forEach((row) => productsByName.add(Products.fromMap(row)));
  }

  void _queryproductstyle(key) async {
    //query
    final allRows = await dbHelper.queryRowsProductstyle(key);
    productsByName.clear();
    // ignore: avoid_function_literals_in_foreach_calls
    allRows.forEach((row) => productsByName.add(Products.fromMap(row)));
  }

  FocusNode focusNodeBrand = new FocusNode();
  FocusNode focusNodeProductname = new FocusNode();
  FocusNode focusNodeProductstyle = new FocusNode();
  late OverlayEntry overlayEntryBrand;
  late OverlayEntry overlayEntryProductname;
  late OverlayEntry overlayEntryProductstyle;

  LayerLink layerLink = new LayerLink();

  @override
  void initState() {
    super.initState();
    focusNodeProductname.addListener(() {
      if (focusNodeProductname.hasFocus) {
        overlayEntryProductname = createSelectPopupWindow_Productname();
        Overlay.of(context)!.insert(overlayEntryProductname);
      } else {
        overlayEntryProductname.remove();
      }
    });
    focusNodeBrand.addListener(() {
      if (focusNodeBrand.hasFocus) {
        overlayEntryBrand = createSelectPopupWindow_Brand();
        Overlay.of(context)!.insert(overlayEntryBrand);
      } else {
        overlayEntryBrand.remove();
      }
    });
    focusNodeProductstyle.addListener(() {
      if (focusNodeProductstyle.hasFocus) {
        overlayEntryProductstyle = createSelectPopupWindow_Productstyle();
        Overlay.of(context)!.insert(overlayEntryProductstyle);
      } else {
        overlayEntryProductstyle.remove();
      }
    });
  }

  OverlayEntry createSelectPopupWindow_Brand() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    // ignore: unused_local_variable
    var size = renderBox.size;
    return OverlayEntry(
        builder: (context) => Positioned(
              top: 140,
              left: 208,
              width: 173,
              child: new CompositedTransformFollower(
                offset: const Offset(0.0, 10),
                link: layerLink,
                child: new Material(
                  child: new Container(
                      height: 120,
                      width: 173,
                      color: const Color.fromARGB(255, 247, 247, 247),
                      child: ListView.builder(
                          padding: const EdgeInsets.all(2),
                          itemCount: productsByName.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                height: 35,
                                width: 173,
                                margin: const EdgeInsets.all(1.0),
                                child: Center(
                                  child: TextButton(
                                    child: Text(
                                      '${productsByName[index].brand}',
                                      style: const TextStyle(
                                        fontFamily: 'Perpetua',
                                        fontSize: 14,
                                        color: Color(0xff818080),
                                        fontWeight: FontWeight.w700,
                                        shadows: [
                                          Shadow(
                                            color: Color(0x29000000),
                                            offset: Offset(0, 3),
                                            blurRadius: 6,
                                          )
                                        ],
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        brandControl.text =
                                            productsByName[index].brand!;
                                        // ignore: avoid_print
                                        print(brandControl.text);
                                        focusNodeBrand.unfocus();
                                      });
                                    },
                                  ),
                                ));
                          })),
                ),
              ),
            ));
  }

  // ignore: non_constant_identifier_names
  OverlayEntry createSelectPopupWindow_Productname() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    // ignore: unused_local_variable
    var size = renderBox.size;
    return OverlayEntry(
        builder: (context) => Positioned(
              top: 175,
              left: 208,
              width: 173,
              child: new CompositedTransformFollower(
                offset: const Offset(0.0, 10),
                link: layerLink,
                child: new Material(
                  child: new Container(
                      height: 120,
                      width: 173,
                      color: const Color.fromARGB(255, 247, 247, 247),
                      child: ListView.builder(
                          padding: const EdgeInsets.all(2),
                          itemCount: productsByName.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                height: 35,
                                width: 173,
                                margin: const EdgeInsets.all(1.0),
                                child: Center(
                                  child: TextButton(
                                    child: Text(
                                      '${productsByName[index].product_name}',
                                      style: const TextStyle(
                                        fontFamily: 'Perpetua',
                                        fontSize: 14,
                                        color: Color(0xff818080),
                                        fontWeight: FontWeight.w700,
                                        shadows: [
                                          Shadow(
                                            color: Color(0x29000000),
                                            offset: Offset(0, 3),
                                            blurRadius: 6,
                                          )
                                        ],
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        product_nameControl.text =
                                            productsByName[index].product_name!;
                                        // ignore: avoid_print
                                        print(product_nameControl.text);
                                        focusNodeProductname.unfocus();
                                      });
                                    },
                                  ),
                                ));
                          })),
                ),
              ),
            ));
  }

  // ignore: non_constant_identifier_names
  OverlayEntry createSelectPopupWindow_Productstyle() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    // ignore: unused_local_variable
    var size = renderBox.size;
    return OverlayEntry(
        builder: (context) => Positioned(
              top: 215,
              left: 208,
              width: 173,
              child: new CompositedTransformFollower(
                offset: const Offset(0.0, 10),
                link: layerLink,
                child: new Material(
                  child: new Container(
                      height: 120,
                      width: 173,
                      color: const Color.fromARGB(255, 247, 247, 247),
                      child: ListView.builder(
                          padding: const EdgeInsets.all(2),
                          itemCount: productsByName.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                height: 35,
                                width: 173,
                                margin: const EdgeInsets.all(1.0),
                                child: Center(
                                  child: TextButton(
                                    child: Text(
                                      '${productsByName[index].product_style}',
                                      style: const TextStyle(
                                        fontFamily: 'Perpetua',
                                        fontSize: 14,
                                        color: Color(0xff818080),
                                        fontWeight: FontWeight.w700,
                                        shadows: [
                                          Shadow(
                                            color: Color(0x29000000),
                                            offset: Offset(0, 3),
                                            blurRadius: 6,
                                          )
                                        ],
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        product_styleControl.text =
                                            productsByName[index]
                                                .product_style!;
                                        // ignore: avoid_print
                                        print(product_styleControl.text);
                                        focusNodeProductstyle.unfocus();
                                      });
                                    },
                                  ),
                                ));
                          })),
                ),
              ),
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            color: const Color(0xffedf2f2),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 330.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, 0.672),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0x3818a3b9), const Color(0x38ffffff)],
                  stops: [0.0, 1.0],
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x09000000),
                    offset: Offset(0, 8),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 189.0, start: -53.0),
            Pin(size: 181.0, start: 21.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x21def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x05000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 146.3, end: -13.3),
            Pin(size: 140.2, start: 74.1),
            child: Transform.rotate(
              angle: -1.2566,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x21def5f9),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x05000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 185.0, start: -62.0),
            Pin(size: 180.0, start: 36.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x47def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0b000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 143.7, end: -19.1),
            Pin(size: 139.3, start: 87.6),
            child: Transform.rotate(
              angle: -1.2566,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x47def5f9),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0b000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 185.0, middle: 0.5044),
            Pin(size: 180.0, start: 80.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x2edef5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 185.0, middle: 0.4912),
            Pin(size: 180.0, start: 101.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x2edef5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 169.0, start: -64.0),
            Pin(size: 175.0, start: 51.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x52def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 130.5, end: -16.9),
            Pin(size: 126.9, start: 99.9),
            child: Transform.rotate(
              angle: -1.2566,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x52def5f9),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 169.0, start: -73.0),
            Pin(size: 164.0, start: 69.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x52def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 130.5, end: -22.2),
            Pin(size: 126.9, start: 114.9),
            child: Transform.rotate(
              angle: -1.2566,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x52def5f9),
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 15.0, end: 15.0),
            Pin(size: 234.0, middle: 0.2309),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(24.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 15.0, end: 15.0),
            Pin(size: 115.0, end: 91.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(24.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 15.0, end: 15.0),
            Pin(size: 199.0, middle: 0.633),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 150.0, start: 33.0),
            Pin(size: 151.0, middle: 0.2664),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0x6ea7a7a7),
                borderRadius: BorderRadius.circular(27.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x12066477),
                    offset: Offset(0, 6),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.23, -0.609),
            child: SizedBox(
              width: 76.0,
              height: 19.0,
              child: Text(
                '品牌',
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 14,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.575, -0.443),
            child: SizedBox(
              width: 91.0,
              height: 19.0,
              child: Text(
                '点击添加图片',
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, end: 32.0),
            Pin(size: 40.0, start: 72.0),
            child: TextButton(
              // color: const Color.fromRGBO(184, 218, 223, 1.0),
              // elevation: 0,
              child: Text(
                "保存",
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 18,
                  color: const Color(0xff0a0a0a),
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textAlign: TextAlign.right,
              ),

              onPressed: () {
                String ProduceDate = _ProduceDate.toString();
                String OpenDate = _OpenDate.toString();
                String OutDate = _OutDate.toString();
                String brand = brandControl.text;
                String product_name = product_nameControl.text;
                String product_style = product_styleControl.text;
                _insert(brand, product_name, product_style, ProduceDate,
                    OpenDate, OutDate);
              },
            ),
          ),
          Align(
            alignment: Alignment(0.128, -0.443),
            child: SizedBox(
              width: 76.0,
              height: 19.0,
              child: Text(
                '产品名',
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 14,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.291, 0.062),
            child: OutlinedButton(
              onPressed: () {
                _restorableProduceDatePickerRouteFuture.present();
              },
              child: SizedBox(
                width: 177.0,
                height: 19.0,
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff818080),
                      letterSpacing: 2.8000000000000003,
                      shadows: [
                        Shadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    children: [
                      TextSpan(
                        text: _ProduceDate.value.year.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: '年   ',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: _ProduceDate.value.month.toString(),
                        style: TextStyle(
                          letterSpacing: 2.24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: '月 ',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: _ProduceDate.value.day.toString(),
                        style: TextStyle(
                          letterSpacing: 2.24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: '日',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.282, 0.199),
            child: OutlinedButton(
                onPressed: () {
                  _restorableOpenDatePickerRouteFuture.present();
                },
                child: SizedBox(
                  width: 177.0,
                  height: 19.0,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff818080),
                        letterSpacing: 2.8000000000000003,
                        shadows: [
                          Shadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      children: [
                        TextSpan(
                          text: _OpenDate.value.year.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: '年   ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: _OpenDate.value.month.toString(),
                          style: TextStyle(
                            letterSpacing: 2.24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: '月 ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: _OpenDate.value.day.toString(),
                          style: TextStyle(
                            letterSpacing: 2.24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: '日',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          Align(
            alignment: Alignment(0.282, 0.338),
            child: OutlinedButton(
                onPressed: () {
                  _restorableOutDatePickerRouteFuture.present();
                },
                child: SizedBox(
                  width: 177.0,
                  height: 19.0,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff818080),
                        letterSpacing: 2.8000000000000003,
                        shadows: [
                          Shadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      children: [
                        TextSpan(
                          text: _OutDate.value.year.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: '年   ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: _OutDate.value.month.toString(),
                          style: TextStyle(
                            letterSpacing: 2.24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: '月 ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: _OutDate.value.day.toString(),
                          style: TextStyle(
                            letterSpacing: 2.24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: '日',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          Align(
            alignment: Alignment(0.17, -0.281),
            child: SizedBox(
              width: 76.0,
              height: 19.0,
              child: Text(
                '产品类型',
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 14,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, start: 27.0),
            Pin(size: 19.0, middle: 0.5361),
            child: Text(
              '生产日期',
              style: TextStyle(
                fontFamily: 'Sitka Text',
                fontSize: 14,
                color: const Color(0xff000000),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, start: 27.0),
            Pin(size: 19.0, middle: 0.6057),
            child: Text(
              '启用日期',
              style: TextStyle(
                fontFamily: 'Sitka Text',
                fontSize: 14,
                color: const Color(0xff000000),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, start: 27.0),
            Pin(size: 19.0, middle: 0.6754),
            child: Text(
              '到期日期',
              style: TextStyle(
                fontFamily: 'Sitka Text',
                fontSize: 14,
                color: const Color(0xff000000),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, start: 14.0),
            Pin(size: 18.0, middle: 0.805),
            child: Text(
              '标签',
              style: TextStyle(
                fontFamily: 'Sitka Text',
                fontSize: 14,
                color: const Color(0xff000000),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
              Pin(size: 173.0, end: 32.0), Pin(size: 28.0, middle: 0.2314),
              child: Column(
                children: [
                  Container(
                    height: 28,
                    // ignore: sort_child_properties_last
                    child: TextField(
                      focusNode: focusNodeBrand,
                      onChanged: (text) {
                        //品牌
                        brandControl.text = text;
                        print(text);
                        setState(() {
                          if (text.isNotEmpty) {
                            setState(() {
                              _querybrand(text);
                            });
                          } else {
                            setState(() {
                              productsByName.clear();
                            });
                          }
                        });
                      },
                      controller: TextEditingController.fromValue(
                          TextEditingValue(
                              // 输入的文本
                              text: brandControl.text,
                              // 保持光标在最后
                              selection: TextSelection.fromPosition(
                                  TextPosition(
                                      affinity: TextAffinity.downstream,
                                      offset: brandControl.text.length)))),
                      decoration: const InputDecoration(
                        hintText: "请输入品牌名",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Perpetua',
                        fontSize: 12,
                        color: Color(0xff818080),
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ],
              )),
          Pinned.fromPins(
              Pin(size: 173.0, end: 32.0), Pin(size: 28.0, middle: 0.3132),
              child: Column(
                children: [
                  Container(
                    height: 28,
                    // ignore: sort_child_properties_last
                    child: TextField(
                      focusNode: focusNodeProductname,
                      onChanged: (text) {
                        //产品名
                        product_nameControl.text = text;
                        print(text);
                        setState(() {
                          if (text.isNotEmpty) {
                            setState(() {
                              _queryproductname(text);
                            });
                          } else {
                            setState(() {
                              productsByName.clear();
                            });
                          }
                        });
                      },
                      controller: TextEditingController.fromValue(
                          TextEditingValue(
                              // 输入的文本
                              text: product_nameControl.text,
                              // 保持光标在最后
                              selection: TextSelection.fromPosition(
                                  TextPosition(
                                      affinity: TextAffinity.downstream,
                                      offset:
                                          product_nameControl.text.length)))),
                      decoration: const InputDecoration(
                        hintText: "请输入产品名",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Perpetua',
                        fontSize: 12,
                        color: Color(0xff818080),
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ],
              )),
          Pinned.fromPins(
              Pin(size: 173.0, end: 32.0), Pin(size: 28.0, middle: 0.3975),
              child: Column(
                children: [
                  Container(
                    height: 28,
                    // ignore: sort_child_properties_last
                    child: TextField(
                      focusNode: focusNodeProductstyle,
                      onChanged: (text) {
                        //产品名
                        product_styleControl.text = text;
                        print(text);
                        setState(() {
                          if (text.isNotEmpty) {
                            setState(() {
                              _queryproductstyle(text);
                            });
                          } else {
                            setState(() {
                              productsByName.clear();
                            });
                          }
                        });
                      },
                      controller: TextEditingController.fromValue(
                          TextEditingValue(
                              // 输入的文本
                              text: product_styleControl.text,
                              // 保持光标在最后
                              selection: TextSelection.fromPosition(
                                  TextPosition(
                                      affinity: TextAffinity.downstream,
                                      offset:
                                          product_styleControl.text.length)))),
                      decoration: const InputDecoration(
                        hintText: "请输入产品类型",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Perpetua',
                        fontSize: 12,
                        color: Color(0xff818080),
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  ),
                ],
              )),
          Pinned.fromPins(
            Pin(size: 279.0, end: 32.0),
            Pin(size: 1.0, middle: 0.5462),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 279.0, end: 32.0),
            Pin(size: 1.0, middle: 0.6144),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 279.0, end: 32.0),
            Pin(size: 1.0, middle: 0.6825),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.472, 0.61),
            child: Container(
              width: 59.0,
              height: 23.0,
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 22.0, start: 41.0),
            Pin(size: 18.0, end: 138.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, middle: 0.2642),
            Pin(size: 23.0, end: 118.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, middle: 0.4801),
            Pin(size: 23.0, end: 118.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, middle: 0.696),
            Pin(size: 23.0, end: 118.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.04, 0.61),
            child: Container(
              width: 59.0,
              height: 23.0,
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.392, 0.61),
            child: Container(
              width: 59.0,
              height: 23.0,
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, end: 32.0),
            Pin(size: 23.0, middle: 0.805),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, end: 32.0),
            Pin(size: 23.0, end: 118.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffedf2f2),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.6, start: 24.0),
            Pin(size: 17.6, start: 77.5),
            child: SvgPicture.string(
              _svg_innz9,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 131.0, middle: 0.5),
            Pin(size: 40.0, start: 64.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => MakeUpTable(),
                ),
              ],
              child: Text(
                '产品信息',
                style: TextStyle(
                  fontFamily: 'Perpetua Titling MT',
                  fontSize: 30,
                  color: const Color(0xff06241a),
                  fontWeight: FontWeight.w700,
                  height: 0.6666666666666666,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, middle: 0.2544),
            Pin(size: 16.0, end: 122.0),
            child: Text(
              '哑光',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 12,
                color: const Color(0xff1e1e1e),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment(-0.491, 0.606),
            child: SizedBox(
              width: 73.0,
              height: 16.0,
              child: Text(
                '滋润',
                style: TextStyle(
                  fontFamily: 'PingFang SC',
                  fontSize: 12,
                  color: const Color(0xff1e1e1e),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, middle: 0.4793),
            Pin(size: 16.0, end: 122.0),
            child: Text(
              '补水',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 12,
                color: const Color(0xff1e1e1e),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, middle: 0.7041),
            Pin(size: 16.0, end: 122.0),
            child: Text(
              '水润',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 12,
                color: const Color(0xff1e1e1e),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment(-0.041, 0.606),
            child: SizedBox(
              width: 73.0,
              height: 16.0,
              child: Text(
                '遮瑕',
                style: TextStyle(
                  fontFamily: 'PingFang SC',
                  fontSize: 12,
                  color: const Color(0xff1d1d1d),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.408, 0.606),
            child: SizedBox(
              width: 73.0,
              height: 16.0,
              child: Text(
                '修补',
                style: TextStyle(
                  fontFamily: 'PingFang SC',
                  fontSize: 12,
                  color: const Color(0xff1d1d1d),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, end: 25.0),
            Pin(size: 16.0, middle: 0.803),
            child: Text(
              '自然',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 12,
                color: const Color(0xff1d1d1d),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, end: 25.0),
            Pin(size: 16.0, end: 122.0),
            child: Text(
              '亮白',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 12,
                color: const Color(0xff1d1d1d),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment(-0.531, -0.398),
            child: SizedBox(
              width: 44.0,
              height: 36.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.transparent,
                  ),
                  Center(
                    child: SizedBox(
                      width: 30.0,
                      height: 11.0,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 7.8, 0.0),
                            child: Stack(
                              children: <Widget>[
                                SizedBox.expand(
                                    child: SvgPicture.string(
                                  _svg_sab6g4,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                )),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 11.0,
                              height: 7.0,
                              child: SvgPicture.string(
                                _svg_ec67qz,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 8.7, start: 47.6),
            Pin(size: 7.2, end: 143.4),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, middle: 0.5808),
                  child: SvgPicture.string(
                    _svg_s0yxc,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 1.0, middle: 0.5647),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_x4enfq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class XD extends StatelessWidget {
//   XD({
//     Key? key,
//   }) : super(key: key);

// }

const String _svg_innz9 =
    '<svg viewBox="24.0 77.5 9.6 17.6" ><path transform="translate(-1024.02, -1231.94)" d="M 1057.34326171875 1325.620361328125 L 1049.950561523438 1318.161010742188 L 1057.104858398438 1310.796752929688 C 1057.414916992188 1310.487915039062 1057.414916992188 1309.965454101562 1057.104858398438 1309.656494140625 C 1056.794677734375 1309.34765625 1056.294067382812 1309.34765625 1056.0078125 1309.656494140625 L 1048.25732421875 1317.638549804688 C 1047.947265625 1317.947387695312 1047.947265625 1318.469970703125 1048.25732421875 1318.77880859375 C 1048.328857421875 1318.849975585938 1048.37646484375 1318.873901367188 1048.471923828125 1318.921264648438 L 1056.246337890625 1326.7607421875 C 1056.55615234375 1327.069458007812 1057.057006835938 1327.069458007812 1057.390991210938 1326.7607421875 C 1057.653442382812 1326.452026367188 1057.653442382812 1325.92919921875 1057.34326171875 1325.620361328125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sab6g4 =
    '<svg viewBox="0.0 0.0 22.6 11.3" ><path  d="M 0 11.30000019073486 L 11.30000019073486 0 L 22.60000038146973 11.30000019073486 L 0 11.30000019073486 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ec67qz =
    '<svg viewBox="19.9 4.2 10.5 7.1" ><path  d="M 23.29999923706055 4.199999809265137 L 19.89999961853027 7.599999904632568 L 23.60000038146973 11.30000019073486 L 30.39999961853027 11.30000019073486 L 23.29999923706055 4.199999809265137 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s0yxc =
    '<svg viewBox="125.0 652.1 8.7 1.0" ><path transform="translate(125.0, 652.09)" d="M 0 0 L 8.729141235351562 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_x4enfq =
    '<svg viewBox="129.4 648.5 1.0 7.2" ><path transform="translate(129.36, 648.5)" d="M 0 0 L 0 7.188704967498779" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';

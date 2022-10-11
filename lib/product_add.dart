// ignore_for_file: prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, use_build_context_synchronously, avoid_function_literals_in_foreach_calls, unused_local_variable, avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'DatabaseHelper.dart';
import 'Products.dart';
import 'package:path_provider/path_provider.dart';

class ProductAddPage extends StatefulWidget {
  const ProductAddPage({Key? key, this.restorationId, required this.products})
      : super(key: key);

  final String? restorationId;
  final Products products;
  @override
  _ProductAddState createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAddPage> with RestorationMixin {
  final dbHelper = DatabaseHelper.instance; //启动数据库
// Initial Selected Value
  // String brand_name = '资生堂';
  // String product_name = '水乳';

// List of items in our dropdown menu
  // var items_brand_name = [
  //   '资生堂',
  //   '姿色',
  //   '兰蔻',
  //   'AHC',
  //   '蜜思婷',
  // ];

  // var items_product_name = [
  //   '水乳',
  //   '隔离',
  //   '防晒霜',
  //   '粉底液',
  //   '气垫',
  // ];
  List<Products> productsByName = [];
  var map = {};

  TextEditingController brandControl = TextEditingController();
  TextEditingController productNameControl = TextEditingController();
  TextEditingController productStyleControl = TextEditingController();

  final imagePicker = ImagePicker(); //图片选择器
  var select;

  FocusNode focusNodeBrand = FocusNode();
  FocusNode focusNodeProductname = FocusNode();
  FocusNode focusNodeProductstyle = FocusNode();
  late OverlayEntry overlayEntryBrand;
  late OverlayEntry overlayEntryProductname;
  late OverlayEntry overlayEntryProductstyle;

  LayerLink layerLink = LayerLink();

  late RestorableDateTime _produceDate;
  late RestorableDateTime _openDate;
  late RestorableDateTime _outDate;
  void _querybrand(key) async {
    //query
    final allRows = await dbHelper.queryRowsBrand(key);
    productsByName.clear();
    allRows.forEach((row) => productsByName.add(Products.fromMap(row)));
  }

  void _queryproductname(key) async {
    //query
    final allRows = await dbHelper.queryRowsProductname(key);
    productsByName.clear();
    allRows.forEach((row) => productsByName.add(Products.fromMap(row)));
  }

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
        overlayEntryBrand = createSelectPopupWindowBrand();
        Overlay.of(context)!.insert(overlayEntryBrand);
      } else {
        overlayEntryBrand.remove();
      }
    });
    _produceDate = RestorableDateTime(widget.products.produceDate!);
    _openDate = RestorableDateTime(widget.products.openDate!);
    _outDate = RestorableDateTime(widget.products.outDate!);
  }

  OverlayEntry createSelectPopupWindowBrand() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    return OverlayEntry(
        builder: (context) => Positioned(
              top: 175,
              left: 250,
              width: 143,
              child: CompositedTransformFollower(
                offset: const Offset(0.0, 10),
                link: layerLink,
                child: Material(
                  child: Container(
                      height: 120,
                      width: 173,
                      color: const Color.fromRGBO(180, 222, 210, 0.5),
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

  OverlayEntry createSelectPopupWindow_Productname() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    return OverlayEntry(
        builder: (context) => Positioned(
              top: 225,
              left: 250,
              width: 143,
              child: CompositedTransformFollower(
                offset: const Offset(0.0, 10),
                link: layerLink,
                child: Material(
                  child: Container(
                      height: 120,
                      width: 173,
                      color: const Color.fromRGBO(180, 222, 210, 0.5),
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
                                      '${productsByName[index].productName}',
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
                                        productNameControl.text =
                                            productsByName[index].productName!;
                                        print(productNameControl.text);
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

  var items_product_style = [
    '底妆',
    '遮瑕和修容',
    '彩妆',
  ];

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
    // _produceDate.value = widget.products.produceDate!;
    // _openDate.value = widget.products.openDate!;
    // _outDate.value = widget.products.outDate!;
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
          lastDate: DateTime(2100),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    DropdownButton<String> productStyleControl = DropdownButton<String>(
      value: widget.products.productStyle,
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
          widget.products.productStyle = newValue!;
          // map['产品类型'] = product_style;
        });
      },
    );
    if (widget.products.productName != null) {
      productNameControl.text = widget.products.productName!;
    }

    if (widget.products.brand != null) {
      brandControl.text = widget.products.brand!;
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/product_add/background.jpg'),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text(""),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '产品信息',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Perpetua Titling MT',
                              fontSize: 30,
                              color: Color(0xff06241a),
                              fontWeight: FontWeight.w700,
                              height: 0.6666666666666666,
                              shadows: [
                                Shadow(
                                  color: Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                          ),
                        ),
                        Expanded(flex: 1, child: Text("")),
                      ],
                    ),
                  ),

                  //第一部分
                  Container(
                    height: 220,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(24.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: InkWell(
                              onTap: () {
                                _modelBottomSheet();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 160,
                                  width: 40,
                                  // ignore: sort_child_properties_last
                                  child: widget.products.image == null
                                      ? const Center(
                                          child: Text(
                                            '点击添加图片',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Perpetua',
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              shadows: [
                                                Shadow(
                                                  color: Color(0x29000000),
                                                  offset: Offset(0, 3),
                                                  blurRadius: 6,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      : Image.file(
                                          File(widget.products.image!)),
                                  decoration: BoxDecoration(
                                    color: const Color(0x6ea7a7a7),
                                    borderRadius: BorderRadius.circular(27.0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x12066477),
                                        offset: Offset(0, 6),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 20,
                              ),
                              Row(children: const <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    '品牌',
                                    style: TextStyle(
                                      fontFamily: 'Perpetua',
                                      fontSize: 14,
                                      color: Color(0xff000000),
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
                                )
                              ]),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12, 3, 12, 3),
                                        child: Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0xff000000)),
                                          ),
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
                                            controller: TextEditingController
                                                .fromValue(TextEditingValue(
                                                    // 输入的文本
                                                    text: brandControl.text,
                                                    // 保持光标在最后
                                                    selection: TextSelection
                                                        .fromPosition(TextPosition(
                                                            affinity:
                                                                TextAffinity
                                                                    .downstream,
                                                            offset: brandControl
                                                                .text
                                                                .length)))),
                                            decoration: const InputDecoration(
                                              hintText: "请输入品牌名",
                                              border: InputBorder.none,
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
                                        ),
                                      ))
                                ],
                              ),
                              Row(children: const <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    '产品名',
                                    style: TextStyle(
                                      fontFamily: 'Perpetua',
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      shadows: [
                                        Shadow(
                                          color: Color(0x29000000),
                                          offset: Offset(0, 3),
                                          blurRadius: 6,
                                        )
                                      ],
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ),
                              ]),
                              Row(children: <Widget>[
                                Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12, 3, 12, 3),
                                      child: Container(
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff000000)),
                                        ),
                                        child: TextField(
                                          focusNode: focusNodeProductname,
                                          onChanged: (text) {
                                            //产品名
                                            productNameControl.text = text;
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
                                          controller: TextEditingController
                                              .fromValue(TextEditingValue(
                                                  // 输入的文本
                                                  text: productNameControl.text,
                                                  // 保持光标在最后
                                                  selection: TextSelection
                                                      .fromPosition(TextPosition(
                                                          affinity: TextAffinity
                                                              .downstream,
                                                          offset:
                                                              productNameControl
                                                                  .text
                                                                  .length)))),
                                          decoration: const InputDecoration(
                                            hintText: "请输入产品名",
                                            border: InputBorder.none,
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
                                      ),
                                    ))
                              ]),
                              Row(children: const <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    '产品类型',
                                    style: TextStyle(
                                      fontFamily: 'Perpetua',
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      shadows: [
                                        Shadow(
                                          color: Color(0x29000000),
                                          offset: Offset(0, 3),
                                          blurRadius: 6,
                                        )
                                      ],
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                ),
                              ]),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12, 3, 12, 3),
                                        child: Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0xff000000)),
                                          ),
                                          padding: const EdgeInsets.fromLTRB(
                                              65, 3, 0, 2),
                                          child: productStyleControl,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  //第二部分
                  Container(
                      height: 180,
                      width: 400,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(24.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
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
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 20, 0),
                                    child: OutlinedButton(
                                        onPressed: () {
                                          _restorableProduceDatePickerRouteFuture
                                              .present();
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
                                                letterSpacing:
                                                    2.8000000000000003,
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
                                                  text: _produceDate.value.year
                                                      .toString(),
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
                                                  text: _produceDate.value.month
                                                      .toString(),
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
                                                  text: _produceDate.value.day
                                                      .toString(),
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
                                            textHeightBehavior:
                                                const TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                  )),
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
                                child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 20, 0),
                                    child: OutlinedButton(
                                        onPressed: () {
                                          _restorableOpenDatePickerRouteFuture
                                              .present();
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
                                                letterSpacing:
                                                    2.8000000000000003,
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
                                                  text: _openDate.value.year
                                                      .toString(),
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
                                                  text: _openDate.value.month
                                                      .toString(),
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
                                                  text: _openDate.value.day
                                                      .toString(),
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
                                            textHeightBehavior:
                                                const TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                            textAlign: TextAlign.center,
                                          ),
                                        ))),
                              )
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
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                    child: OutlinedButton(
                                        onPressed: () {
                                          _restorableOutDatePickerRouteFuture
                                              .present();
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
                                                letterSpacing:
                                                    2.8000000000000003,
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
                                                  text: _outDate.value.year
                                                      .toString(),
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
                                                  text: _outDate.value.month
                                                      .toString(),
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
                                                  text: _outDate.value.day
                                                      .toString(),
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
                                            textHeightBehavior:
                                                const TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                            textAlign: TextAlign.center,
                                          ),
                                        ))),
                              )
                            ],
                          ),
                        ],
                      )),
                  const SizedBox(height: 20),
                  const Divider(
                    color: Color.fromARGB(255, 84, 82, 82),
                  ),
                  //第三部分
                  Container(
                    height: 90,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(24.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Row(children: <Widget>[
                      const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text("标签",
                                  style: (TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Row(
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
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)))),
                                        ),
                                      ))),
                            ],
                          ))
                    ]),
                  ),

                  // Row(
                  //   children: <Widget>[
                  //     const Expanded(
                  //         flex: 1,
                  //         child: Padding(
                  //           padding: EdgeInsets.all(10),
                  //           child: Center(
                  //             child: Text(
                  //               "特性标签",
                  //               textAlign: TextAlign.center,
                  //             ),
                  //           ),
                  //         )),
                  //     Expanded(
                  //         flex: 3,
                  //         child: Wrap(children: const <Widget>[
                  //           Expanded(
                  //               child: Padding(
                  //                   padding: EdgeInsets.all(10),
                  //                   child: SizedBox(
                  //                     height: 20,
                  //                     width: 70,
                  //                     child: TextField(
                  //                       decoration: InputDecoration(
                  //                           border: OutlineInputBorder(
                  //                               borderRadius: BorderRadius.all(
                  //                                   Radius.circular(5)))),
                  //                     ),
                  //                   ))),
                  //           Expanded(
                  //               child: Padding(
                  //                   padding: EdgeInsets.all(10),
                  //                   child: SizedBox(
                  //                     height: 20,
                  //                     width: 70,
                  //                     child: TextField(
                  //                       decoration: InputDecoration(
                  //                           border: OutlineInputBorder(
                  //                               borderRadius: BorderRadius.all(
                  //                                   Radius.circular(5)))),
                  //                     ),
                  //                   ))),
                  //           Expanded(
                  //               child: Padding(
                  //                   padding: EdgeInsets.all(10),
                  //                   child: SizedBox(
                  //                     height: 20,
                  //                     width: 70,
                  //                     child: TextField(
                  //                       decoration: InputDecoration(
                  //                           border: OutlineInputBorder(
                  //                               borderRadius: BorderRadius.all(
                  //                                   Radius.circular(5)))),
                  //                     ),
                  //                   ))),
                  //           Expanded(
                  //               child: Padding(
                  //                   padding: EdgeInsets.all(10),
                  //                   child: SizedBox(
                  //                     height: 20,
                  //                     width: 70,
                  //                     child: TextField(
                  //                       decoration: InputDecoration(
                  //                           border: OutlineInputBorder(
                  //                               borderRadius: BorderRadius.all(
                  //                                   Radius.circular(5)))),
                  //                     ),
                  //                   ))),
                  //           Expanded(
                  //               child: Padding(
                  //                   padding: EdgeInsets.all(10),
                  //                   child: SizedBox(
                  //                     height: 20,
                  //                     width: 70,
                  //                     child: TextField(
                  //                       decoration: InputDecoration(
                  //                           border: OutlineInputBorder(
                  //                               borderRadius: BorderRadius.all(
                  //                                   Radius.circular(5)))),
                  //                     ),
                  //                   ))),
                  //           Expanded(
                  //               child: Padding(
                  //                   padding: EdgeInsets.all(10),
                  //                   child: SizedBox(
                  //                     height: 20,
                  //                     width: 70,
                  //                     child: TextField(
                  //                       decoration: InputDecoration(
                  //                           border: OutlineInputBorder(
                  //                               borderRadius: BorderRadius.all(
                  //                                   Radius.circular(5)))),
                  //                     ),
                  //                   )))
                  //         ]))
                  //   ],
                  // ),
                  const SizedBox(height: 10),
                  //第四部分
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          widget.products.produceDate = _produceDate.value;
                          widget.products.openDate = _openDate.value;
                          widget.products.outDate = _outDate.value;
                          widget.products.brand = brandControl.text;
                          widget.products.productName = productNameControl.text;
                          if (widget.products.id == null) {
                            _insert_product();
                          } else {
                            _update_product();
                          }

                          Navigator.of(context).pop(true);
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
                ]))));
  }

  void _insert_product() async {
    final id = await dbHelper.insert(widget.products);
    widget.products.id = id;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('inserted row id: $id'),
    ));
  }

  void _update_product() async {
    final id = await dbHelper.update(widget.products);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('updated row id: $id'),
    ));
  }

  @override
  String? get restorationId => widget.restorationId;

  void _modelBottomSheet() async {
    select = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220,
            child: Column(
              children: [
                const ListTile(
                  title: Text("请选择上传图片方式"),
                ),
                const Divider(),
                ListTile(
                  title: const Text("拍照"),
                  onTap: () {
                    getImage();
                    Navigator.of(context).pop("拍照");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("相册"),
                  onTap: () {
                    getImage();
                    Navigator.of(context).pop("相册");
                  },
                ),
              ],
            ),
          );
        });
    print(select);
    print(widget.products.image);
  }

  Future getImage() async {
    final XFile? _image = await imagePicker.pickImage(
        source: select == "相册" ? ImageSource.gallery : ImageSource.camera);
    if (_image == null) {
      return;
    }
    final Directory directory = await getApplicationDocumentsDirectory();
    final String dir_path = directory.path;
    final now = DateTime.now().toString();
    final String save_path = '$dir_path/$now.jpg';
    _image.saveTo(save_path);
    setState(() {
      widget.products.image = save_path;
    });
  }
}

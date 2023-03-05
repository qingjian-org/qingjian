// ignore_for_file: unnecessary_new


import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'DatabaseHelper.dart';
import 'Products.dart';

class CommunityPages extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPages> {
  int count = 0;

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Center(
        // child: Text('First: $count', style: const TextStyle(fontSize: 30))
        body: Stack(children: <Widget>[
          Pinned.fromPins(
              Pin(size: 173.0, end: 32.0), Pin(size: 28.0, middle: 0.2314),
              child: Column(
                children: [
                  Container(
                    height: 28,
                    // ignore: sort_child_properties_last
                    child: CompositedTransformTarget(
                      link: layerLink,
                      child: TextFormField(
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
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff000000)),
                    ),
                  )
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
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: const Icon(Icons.add),
        ));
  }

  final dbHelper = DatabaseHelper.instance;

  List<Products> products = [];
  List<Products> productsByName = [];

  final TextEditingController _queryController = TextEditingController();
  TextEditingController brandControl = new TextEditingController();
  TextEditingController product_nameControl = new TextEditingController();
  TextEditingController product_styleControl = new TextEditingController();

  // ignore: unused_element
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
        overlayEntryBrand = createSelectPopupWindowBrand();
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

  /**
     * 利用Overlay实现PopupWindow效果，悬浮的widget
     * 利用CompositedTransformFollower和CompositedTransformTarget
     */
  OverlayEntry createSelectPopupWindowBrand() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    // ignore: unused_local_variable
    var size = renderBox.size;
    return OverlayEntry(
        builder: (context) => Positioned(
              // top: 400,
              // left: 208,
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
                                        product_nameControl.text =
                                            productsByName[index].productName!;
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
                                      '${productsByName[index].productStyle}',
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
                                            productsByName[index].productStyle!;
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
}

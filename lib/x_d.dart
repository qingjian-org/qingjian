import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'DatabaseHelper.dart';
import 'Products.dart';
import 'test.dart';

class XD extends StatefulWidget {
  const XD({Key? key}) : super(key: key);

  @override
  _XDState createState() => _XDState();
}

class _XDState extends State<XD> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  final dbHelper = DatabaseHelper.instance; //启动数据库

  List<Products> products = [];
  var map = new Map();

  TextEditingController brandControl = new TextEditingController();
  TextEditingController product_nameControl = new TextEditingController();
  TextEditingController product_styleControl = new TextEditingController();

//   void initState() {
// // TODO: implement initState
//     super.initState();
//     brandControl.text = '雅思兰黛';
//     product_nameControl.text = '水乳';
//     product_styleControl.text = '保湿类';
//   }

  // String brand = '雅思兰黛';
  // String product_name = '水乳';
  // String product_style = '保湿类';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            color: const Color(0xffedf2f2),
            // margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, -1.0),
            margin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 1.0),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 327.0, start: 0.0),
            //底图背景框设置
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
            Pin(size: 146.3, end: -34.3),
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
            Pin(size: 143.7, end: -40.1),
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
            Pin(size: 185.0, middle: 0.5561),
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
            Pin(size: 185.0, middle: 0.5073),
            Pin(size: 180.0, start: 98.0),
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
            Pin(size: 130.5, end: -37.9),
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
            Pin(size: 130.5, end: -43.2),
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
          //第一个框的背景颜色
          Pinned.fromPins(
            Pin(start: 9.0, end: 9.0),
            Pin(size: 232.0, middle: 0.2255),
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
          //标签框背景颜色
          Pinned.fromPins(
            Pin(start: 9.0, end: 9.0),
            Pin(size: 112.0, end: 112.0),
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
          //日期框背景颜色
          Pinned.fromPins(
            Pin(start: 9.0, end: 9.0),
            Pin(size: 198.0, middle: 0.613),
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
          //编辑图片背景框颜色
          Pinned.fromPins(
            Pin(size: 150.0, start: 24.0),
            Pin(size: 151.0, middle: 0.2583),
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
          //品牌文字修饰
          Align(
            alignment: Alignment(0.21, -0.619),
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
          //点击添加图片文字修饰
          Align(
            alignment: Alignment(-0.605, -0.457),
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
          //右上角编辑文字修饰
          Pinned.fromPins(
            Pin(size: 58.0, end: 27.0),
            Pin(size: 29.0, start: 69.0),
            child: new RaisedButton(
              color: const Color.fromRGBO(184, 218, 223, 1.0),
              elevation: 0,
              child: Text(
                '编辑',
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 23,
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
                String brand = brandControl.text;
                String product_name = product_nameControl.text;
                String product_style = product_styleControl.text;
                _insert(brand, product_name, product_style);
              },
            ),
          ),

          //产品名文字修饰
          Align(
            alignment: Alignment(0.102, -0.457),
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

          //生产日期那一行
          Align(
            alignment: Alignment(0.324, 0.035),
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
                        // color: Colors.red,
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      )
                    ],
                  ),
                  children: [
                    TextSpan(
                      text: '2022',
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
                      text: '0',
                      style: TextStyle(
                        letterSpacing: 2.24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: '8月 ',
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
                      text: '0',
                      style: TextStyle(
                        letterSpacing: 2.24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: '1日',
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
          //启用日期那一行
          Align(
            alignment: Alignment(0.324, 0.168),
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
                      text: '2022',
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
                      text: '0',
                      style: TextStyle(
                        letterSpacing: 2.24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: '8月 ',
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
                      text: '0',
                      style: TextStyle(
                        letterSpacing: 2.24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: '1日',
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
          //到期日期那一行
          Align(
            alignment: Alignment(0.324, 0.304),
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
                      text: '2022',
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
                      text: '0',
                      style: TextStyle(
                        letterSpacing: 2.24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: '8月 ',
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
                      text: '0',
                      style: TextStyle(
                        letterSpacing: 2.24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: '1日',
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
          //产品类型文字修饰
          Align(
            alignment: Alignment(0.146, -0.299),
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
          //生产日期文字修饰
          Pinned.fromPins(
            Pin(size: 76.0, start: 21.0),
            Pin(size: 19.0, middle: 0.5224),
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
          //启用日期文字修饰
          Pinned.fromPins(
            Pin(size: 76.0, start: 20.0),
            Pin(size: 19.0, middle: 0.5903),
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
          //到期日期文字修饰
          Pinned.fromPins(
            Pin(size: 76.0, start: 20.0),
            Pin(size: 19.0, middle: 0.6582),
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
          //标签文字修饰
          Pinned.fromPins(
            Pin(size: 76.0, start: 6.0),
            Pin(size: 18.0, middle: 0.7845),
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
          //品牌名输入边框
          Pinned.fromPins(
            Pin(size: 173.0, end: 27.0),
            Pin(size: 28.0, middle: 0.2255),
            child: Container(
              // ignore: sort_child_properties_last
              child: TextField(
                controller: brandControl,
                onChanged: (value) {
                  //品牌
                  setState(() {
                    this.brandControl.text = value;
                    print(brandControl);
                  });
                },
                decoration: InputDecoration(
                  hintText: "请输入品牌名",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                ),
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 12,
                  color: const Color(0xff818080),
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          //产品名输入边框
          Pinned.fromPins(
            Pin(size: 173.0, end: 27.0),
            Pin(size: 28.0, middle: 0.3051),
            child: Container(
              child: TextField(
                controller: product_nameControl,
                onChanged: (value) {
                  //产品名
                  setState(() {
                    this.product_nameControl.text = value;
                  });
                },
                decoration: InputDecoration(hintText: "请输入产品名"),
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 12,
                  color: const Color(0xff818080),
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          //产品类型输入边框
          Pinned.fromPins(
            Pin(size: 173.0, end: 27.0),
            Pin(size: 28.0, middle: 0.3873),
            child: Container(
              child: TextField(
                controller: product_styleControl,
                onChanged: (value) {
                  //产品类型
                  setState(() {
                    this.product_styleControl.text = value;
                  });
                },
                decoration: InputDecoration(
                    hintText: "请输入产品类型",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0)),
                style: TextStyle(
                  fontFamily: 'Perpetua',
                  fontSize: 12,
                  color: const Color(0xff818080),
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(size: 271.0, end: 27.0),
            Pin(size: 1.0, middle: 0.5326),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 271.0, end: 27.0),
            Pin(size: 1.0, middle: 0.5991),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 271.0, end: 27.0),
            Pin(size: 1.0, middle: 0.6655),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          //标签盒子修饰
          Align(
            alignment: Alignment(-0.541, 0.569),
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
            Pin(size: 22.0, start: 33.0),
            Pin(size: 18.0, middle: 0.8111),
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
            Pin(size: 59.0, middle: 0.2296),
            Pin(size: 23.0, end: 139.0),
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
            Pin(size: 59.0, middle: 0.4592),
            Pin(size: 23.0, end: 139.0),
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
            Pin(size: 59.0, middle: 0.6888),
            Pin(size: 23.0, end: 139.0),
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
            alignment: Alignment(-0.082, 0.569),
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
            alignment: Alignment(0.378, 0.569),
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
            Pin(size: 59.0, end: 27.0),
            Pin(size: 23.0, middle: 0.7844),
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
            Pin(size: 59.0, end: 27.0),
            Pin(size: 23.0, end: 139.0),
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
            // child: SvgPicture.string(
            //   _svg_innz9,
            //   allowDrawingOutsideViewBox: true,
            //   fit: BoxFit.fill,

            // ),
            child: IconButton(
              //这是图标长按会出现的提示信息，返回按钮这么常用，应该不需要吧
              //tooltip: '返回上一页',
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new DataBase()),
                );
              },
            ),
          ),
          //产品信息文字修饰
          Pinned.fromPins(
            Pin(size: 131.0, middle: 0.5251),
            Pin(size: 40.0, start: 61.0),
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
          //标签文字修饰
          Pinned.fromPins(
            Pin(size: 73.0, middle: 0.2177),
            Pin(size: 16.0, end: 143.0),
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
            alignment: Alignment(-0.565, 0.565),
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
            Pin(size: 73.0, middle: 0.4574),
            Pin(size: 16.0, end: 143.0),
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
            Pin(size: 73.0, middle: 0.6972),
            Pin(size: 16.0, end: 143.0),
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
            alignment: Alignment(-0.085, 0.565),
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
            alignment: Alignment(0.394, 0.565),
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
            Pin(size: 73.0, end: 20.0),
            Pin(size: 16.0, middle: 0.7826),
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
            Pin(size: 73.0, end: 20.0),
            Pin(size: 16.0, end: 143.0),
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
          //添加图片图标修饰
          Align(
            alignment: Alignment(-0.555, -0.413),
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
            Pin(size: 8.7, start: 39.6),
            Pin(size: 7.2, end: 161.4),
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

  void _insert(brand, product_name, product_style) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnBrand: brand,
      DatabaseHelper.columnProductName: product_name,
      DatabaseHelper.columnProductStyle: product_style
    };
    Products products = Products.fromMap(row);
    final id = await dbHelper.insert(products);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('inserted row id: $id'),
    ));
  }
}

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

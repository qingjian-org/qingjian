import 'package:flutter/material.dart';

class ProductAddState extends StatefulWidget {
  @override
  _ProductAdd createState() => _ProductAdd();
}

class _ProductAdd extends State<ProductAddState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("产品信息"),
          leading: new IconButton(
            //这是图标长按会出现的提示信息，返回按钮这么常用，应该不需要吧
            //tooltip: '返回上一页',
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: HomePage(),
      ),
      theme: ThemeData(primaryColor: Colors.black),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _ProductAddState createState() => _ProductAddState();
}

class _ProductAddState extends State<HomePage> {
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

  var map = new Map();
  var produce_year, produce_month, produce_day;
  var start_year, start_month, start_day;
  var end_year, end_month, end_day;

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'One';
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          //第一部分
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  height: 180,
                  child: Image.asset(
                    "images/product_add/product1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 4,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Text(
                              "品牌名:",
                              style: (TextStyle(fontSize: 16)),
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: DropdownButton<String>(
                                value: brand_name,

                                // icon: const Icon(Icons.keyboard_arrow_down),
                                items: items_brand_name.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    brand_name = newValue!;
                                    map['品牌名'] = brand_name;
                                  });
                                },
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 2,
                            child:
                                Text("产品名:", style: (TextStyle(fontSize: 16)))),
                        Expanded(
                          flex: 3,
                          child: DropdownButton<String>(
                            value: product_name,
                            // icon: const Icon(Icons.keyboard_arrow_down),
                            items: items_product_name.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: TextStyle(fontSize: 14),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                product_name = newValue!;
                                map['产品名'] = product_name;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Text("产品类型:",
                                style: (TextStyle(fontSize: 16)))),
                        Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: DropdownButton<String>(
                                value: product_style,
                                // icon: const Icon(Icons.keyboard_arrow_down),
                                items: items_product_style.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    product_style = newValue!;
                                    map['产品类型'] = product_style;
                                  });
                                },
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          // SizedBox(height: 5),
          Divider(
            color: Color.fromARGB(255, 84, 82, 82),
          ),
          //第二部分
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "生产日期",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Wrap(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.produce_year = value;
                                    map['生产日期-年'] = produce_year;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.produce_month = value;
                                    map['生产日期-月'] = produce_month;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.produce_day = value;
                                    map['生产日期-日'] = produce_day;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            )))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "启用日期",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Wrap(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.start_year = value;
                                    map['启用日期-年'] = start_year;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.start_month = value;
                                    map['启用日期-月'] = start_month;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.start_day = value;
                                    map['启用日期-日'] = start_day;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            )))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "到期日期",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Wrap(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.end_year = value;
                                    map['到期日期-年'] = end_year;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.end_month = value;
                                    map['到期日期-月'] = end_month;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    this.end_day = value;
                                    map['到期日期-日'] = end_day;
                                  });
                                },
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            )))
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 84, 82, 82),
          ),
          //第三部分
          Row(children: <Widget>[
            Expanded(
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
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                  ],
                ))
          ]),

          Row(
            children: <Widget>[
              Expanded(
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
                  child: Wrap(children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 20,
                              width: 70,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            )))
                  ]))
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 84, 82, 82),
          ),
          //第四部分
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print(map);
                },
                child: Text(
                  "保存",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(120, 40),
                ),
              ),
            ],
          )
        ]));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

// class sceen extends StatefulWidget {
//   const sceen({ Key? key }) : super(key: key);

//   @override
//   _sceen createState() => _sceen();
// }

// class _sceen extends State<sceen> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
      
//     );
//   }
// }

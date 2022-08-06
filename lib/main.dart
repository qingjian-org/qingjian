import 'package:flutter/material.dart';

import 'makeup.dart';
import 'product.dart';
import 'my.dart';
import 'community.dart';

void main() => runApp(MyApp());
//这是一个注释
//这是第三个注释
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = [
    const BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: '产品柜'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.add_photo_alternate), label: '美妆柜'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.connect_without_contact), label: '社区'),
    const BottomNavigationBarItem(icon: Icon(Icons.account_box), label: '我的')
  ];
// 第二行注释
  final bodyList = [ProductPage(), MakeUpPage(), CommunityPage(), MyPage()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: items,
            currentIndex: currentIndex,
            onTap: onTap,
            selectedItemColor: Colors.amber[800]),
        body: bodyList[currentIndex]);
  }
}

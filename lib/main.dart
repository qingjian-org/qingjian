import 'package:flutter/material.dart';

import 'makeup.dart';
import 'product.dart';
import 'my.dart';
import 'community.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = [
    BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: '产品柜'),
    BottomNavigationBarItem(
        icon: Icon(Icons.add_photo_alternate), label: '美妆柜'),
    BottomNavigationBarItem(
        icon: Icon(Icons.connect_without_contact), label: '社区'),
    BottomNavigationBarItem(icon: Icon(Icons.account_box), label: '我的')
  ];

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

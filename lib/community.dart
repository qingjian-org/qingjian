import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int count = 0;

  void add() {
    setState(() {
      count++;
    });
  }

  var _brandControl = new TextEditingController();

  void initState() {
// TODO: implement initState
    super.initState();
    _brandControl.text = ' ';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          // child: Text('First: $count', style: const TextStyle(fontSize: 30))
          child: Pinned.fromPins(
              Pin(size: 124.0, end: 51.0), Pin(size: 17.0, middle: 0.2297),
              child: Container(
                width: 30,
                height: 30,
                // color: Colors.black,
                child: TextField(
                  controller: _brandControl,
                  onChanged: (value) {
                    //品牌
                    setState(() {
                      this._brandControl.text = value;
                      print(value);
                    });
                  },
                  decoration: InputDecoration(
                      hintText: "请输入品牌名",
                      // border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0)),
                  style: TextStyle(
                    fontFamily: 'Perpetua',
                    fontSize: 12,
                    // color: const Color(0xff818080),
                    color: Colors.red,
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
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: const Icon(Icons.add),
        ));
  }
}

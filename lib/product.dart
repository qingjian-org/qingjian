import 'package:flutter/material.dart';
// import 'product_add.dart';
// import 'xdi_phone1212_pro5.dart';
import 'x_d.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int count = 0;

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text('First: $count', style: const TextStyle(fontSize: 30))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => XD()));
          },
          child: const Icon(Icons.add),
        ));
  }
}

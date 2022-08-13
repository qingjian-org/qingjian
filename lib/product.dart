import 'package:flutter/material.dart';
// import 'product_add.dart';
// import 'xdi_phone1212_pro5.dart';
import 'x_d.dart';

final List<String> _suggestions = <String>[
  '产品一',
  '产品二',
  '产品三',
  '产品四',
  '产品五',
  '产品六',
  '产品七',
  '产品八',
];

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int count = 0;

  bool expanded = false;

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: expanded
                    ? SizedBox(
                        height: 100,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: _suggestions.length + 1,
                          itemBuilder: (context, index) => index != 0
                              ? SizedBox(
                                  width: 100,
                                  height: 100,
                                  // color: ,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.purple[600]),
                                    onPressed: () {},
                                    child: Center(
                                        child: Column(
                                      children: [
                                        const Icon(
                                          Icons.cleaning_services_rounded,
                                          size: 75,
                                        ),
                                        Text(
                                          _suggestions[index - 1],
                                          style: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        )
                                      ],
                                    )),
                                  ))
                              : const Icon(
                                  Icons.add_box_rounded,
                                  size: 100,
                                ),
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 5,
                            );
                          },
                        ))
                    : Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 10.0,
                        runSpacing: 20.0,
                        children: List.generate(
                            _suggestions.length + 1,
                            (index) => index != 0
                                ? SizedBox(
                                    width: 100,
                                    height: 100,
                                    // color: ,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.purple[600]),
                                      onPressed: () {},
                                      child: Center(
                                          child: Column(
                                        children: [
                                          const Icon(
                                            Icons.cleaning_services_rounded,
                                            size: 75,
                                          ),
                                          Text(
                                            _suggestions[index - 1],
                                            style: const TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          )
                                        ],
                                      )),
                                    ))
                                : const Icon(
                                    Icons.add_box_rounded,
                                    size: 100,
                                  )),
                      ),
              ),
              IconButton(
                alignment: Alignment.topCenter,
                icon: expanded
                    ? const Icon(Icons.expand_more)
                    : const Icon(Icons.expand_less),
                onPressed: () {
                  setState(() {
                    expanded = !expanded;
                  });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => XD()));
          },
          child: const Icon(Icons.add),
        ));
  }
}

import 'package:flutter/material.dart';

final List<String> _suggestions = <String>['第一天', '第二天', '第三天', '第四天'];
final Set<String> _saved = <String>{};
const TextStyle _biggerFont = TextStyle(fontSize: 18.0);

class _TabData {
  final Widget tab;
  final Widget body;
  _TabData({required this.tab, required this.body});
}

final _tabDataList = <_TabData>[
  _TabData(tab: const Text('美妆日志'), body: DiaryPage()),
  _TabData(tab: const Text('收藏'), body: FaveritePage())
];
final tabBarList = _tabDataList.map((item) => item.tab).toList();
final tabBarViewList = _tabDataList.map((item) => item.body).toList();

class MakeUpPage extends StatefulWidget {
  @override
  _MakeUpPageState createState() => _MakeUpPageState();
}

class _MakeUpPageState extends State<MakeUpPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabBarList.length,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 80,
              padding: const EdgeInsets.fromLTRB(20, 24, 0, 0),
              alignment: Alignment.centerLeft,
              color: Colors.black,
              child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.red,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.white,
                  unselectedLabelStyle: const TextStyle(fontSize: 18),
                  labelColor: Colors.red,
                  labelStyle: const TextStyle(fontSize: 20),
                  tabs: tabBarList),
            ),
            Expanded(
                child: TabBarView(
              children: tabBarViewList,
            ))
          ],
        ));
  }
}

class DiaryPage extends StatefulWidget {
  @override
  DiaryPageState createState() => DiaryPageState();
}

class DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    final Iterable<ListTile> tiles = _suggestions.map((String text) {
      final bool alreadySaved = _saved.contains(text);
      return ListTile(
          title: Text(
            text,
            style: _biggerFont,
          ),
          trailing: Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null,
          ),
          onTap: () {
            setState(() {
              if (alreadySaved) {
                _saved.remove(text);
              } else {
                _saved.add(text);
              }
            });
          });
    });
    return Scaffold(
        body: ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: tiles,
      ).toList(),
    ));
  }
}

class FaveritePage extends StatefulWidget {
  @override
  FaveritePageState createState() => FaveritePageState();
}

class FaveritePageState extends State<FaveritePage> {
  @override
  Widget build(BuildContext context) {
    Iterable<ListTile> tiles = _saved.map((String text) {
      return ListTile(
        title: Text(
          text,
          style: _biggerFont,
        ),
      );
    });

    List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return Scaffold(
      body: ListView(
        children: divided,
      ),
    );
  }
}

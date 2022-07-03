import 'package:flutter/material.dart';

final List<String> _suggestions = <String>['第一天', '第二天', '第三天', '第四天'];
final Set<String> _saved = new Set<String>();
final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

class _TabData {
  final Widget tab;
  final Widget body;
  _TabData({required this.tab, required this.body});
}

final _tabDataList = <_TabData>[
  _TabData(tab: Text('美妆日志'), body: DiaryPage()),
  _TabData(tab: Text('收藏'), body: FaveritePage())
];

class MakeUpPage extends StatefulWidget {
  @override
  _MakeUpPageState createState() => _MakeUpPageState();
}

class _MakeUpPageState extends State<MakeUpPage> {
  final tabBarList = _tabDataList.map((item) => item.tab).toList();
  final tabBarViewList = _tabDataList.map((item) => item.body).toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabBarList.length,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.fromLTRB(20, 24, 0, 0),
              alignment: Alignment.centerLeft,
              color: Colors.black,
              child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.red,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.white,
                  unselectedLabelStyle: TextStyle(fontSize: 18),
                  labelColor: Colors.red,
                  labelStyle: TextStyle(fontSize: 20),
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
  DiaryPageState createState() => new DiaryPageState();
}

class DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    final Iterable<ListTile> tiles = _suggestions.map((String text) {
      final bool alreadySaved = _saved.contains(text);
      return new ListTile(
          title: new Text(
            text,
            style: _biggerFont,
          ),
          trailing: new Icon(
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
    return new Scaffold(
        body: new ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: tiles,
      ).toList(),
    ));
  }
}

class FaveritePage extends StatefulWidget {
  @override
  FaveritePageState createState() => new FaveritePageState();
}

class FaveritePageState extends State<FaveritePage> {
  @override
  Widget build(BuildContext context) {
    final Iterable<ListTile> tiles = _saved.map((String text) {
      return new ListTile(
        title: new Text(
          text,
          style: _biggerFont,
        ),
      );
    });
    final List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return new Scaffold(
      // appBar: new AppBar(
      //   title: const Text('Saved Suggestions'),
      // ),
      body: new ListView(
        children: divided,
      ),
    );
  }
}

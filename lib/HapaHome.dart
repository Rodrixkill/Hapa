import 'package:flutter/material.dart';
import 'package:hapa/SideMenu.dart';
import 'package:hapa/newsList.dart';

class HapaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        drawer: new SideMenu(),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                NewsList(),
              ],
            ),
          ],
        ));
  }
}

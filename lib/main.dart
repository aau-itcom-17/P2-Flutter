import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;
import './FourthPage.dart' as fourth;

void main() {
  runApp(new MaterialApp(
    home: new MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Pages"),
          backgroundColor: Colors.black,
          bottom: new TabBar(controller: controller, tabs: <Tab>[
            new Tab(icon: new Icon(Icons.map)),
            new Tab(icon: new Icon(Icons.list)),
            new Tab(icon: new Icon(Icons.favorite)),
            new Tab(icon: new Icon(Icons.add)),
          ])),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third(),
          new fourth.Fourth()

        ],
      ),
    );
  }
}

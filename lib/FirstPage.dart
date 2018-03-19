import 'package:flutter/material.dart';
import './main.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Map"), backgroundColor: roskildeOrange),
        body: new Container(
          child: new Center(
              child: new Icon(Icons.map, size: 150.0, color: Colors.black)),
        ));
  }
}

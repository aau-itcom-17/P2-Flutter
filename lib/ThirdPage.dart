import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("My Events"), backgroundColor: Colors.orange),
        body: new Container(
          child: new Center(
              child: new Icon(Icons.favorite, size: 150.0, color: Colors.black)),
        ));
  }
}

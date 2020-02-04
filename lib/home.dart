import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            child: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            color: Colors.blue,
          ),
        ));
  }
}

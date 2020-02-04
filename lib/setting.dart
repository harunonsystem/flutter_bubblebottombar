import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            child: Text(
              "Setting",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            color: Colors.green,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bubble_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BottomBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<BottomNavigationBarProvider>(
        child: BottomBar(),
        builder: (BuildContext context) => BottomNavigationBarProvider(),
      ),
    );
  }
}

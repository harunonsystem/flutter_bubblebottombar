import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'profile_page.dart';
import 'setting.dart';

class Bubble_BottomBar extends StatefulWidget {
  Bubble_BottomBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Bubble_BottomBarState createState() => _Bubble_BottomBarState();
}

class _Bubble_BottomBarState extends State<Bubble_BottomBar> {
  var currentTab = [
    HomePage(),
    ProfilePage(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);

    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        currentIndex: provider.currentIndex,
        opacity: 0.2,
        onTap: (index) {
          provider.currentIndex = index;
        },
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 10,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        inkColor: Colors.white, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              title: Text("Profile")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.settings,
                color: Colors.green,
              ),
              title: Text("Setting")),
        ],
      ),
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 1;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

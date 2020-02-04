import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'profile_page.dart';
import 'setting.dart';

class BubbleBottomBar extends StatefulWidget {
  BubbleBottomBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BubbleBottomBarState createState() => _BubbleBottomBarState();
}

class _BubbleBottomBarState extends State<BubbleBottomBar> {
  var currentTab = [
    HomePage(),
    ProfilePage(),
    Setting(),
  ];
  int currentIndex;

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);

    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            provider.currentIndex = index;
          });
        },
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 10,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.white, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text("Profile")),
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.settings,
                color: Colors.red,
              ),
              title: Text("Setting")),
        ],
      ),
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

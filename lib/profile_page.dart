import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 300,
          width: 300,
          child: Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          color: Colors.pink,
        ),
      ),
    );
  }

  Widget CompanyInfo() {
    var listItem = ['会社情報', '利用規約', 'Privacy Policy', 'お問い合わせ'];

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black38),
              ),
            ),
            child: ListTile(
              title: Text(
                listItem[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                    fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              onTap: () {/* react to the tile being tapped */},
            ));
      },
      itemCount: listItem.length,
    );
  }
}

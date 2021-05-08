import 'package:flutter/material.dart';

// ignore: unused_element
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Vipul Lakhara"),
              accountEmail: Text("vipullakhara18@gmail.com"),
              currentAccountPicture: Image.asset("assets/images/vipul.jpg"),
            ),
          )
        ],
      ),
    );
  }
}

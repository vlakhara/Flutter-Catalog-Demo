import 'package:flutter/material.dart';
import 'package:flutter_f1/pages/HomePage.dart';
import 'package:flutter_f1/pages/LoginPage.dart';

void main() {
  runApp(myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => LoginPage(),
        "/HomePage": (context) => HomePage(),
        "/LoginPage": (context) => LoginPage(),
      },
    );
  }
}

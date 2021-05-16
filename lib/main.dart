import 'package:flutter/material.dart';
import 'package:flutter_f1/pages/HomePage.dart';
import 'package:flutter_f1/pages/LoginPage.dart';
import 'package:flutter_f1/pages/cartPage.dart';
import 'package:flutter_f1/utils/routes.dart';
import 'package:flutter_f1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}

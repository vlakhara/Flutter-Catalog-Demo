import 'package:flutter/material.dart';
import 'package:flutter_f1/core/store.dart';
import 'package:flutter_f1/pages/HomePage.dart';
import 'package:flutter_f1/pages/LoginPage.dart';
import 'package:flutter_f1/pages/cartPage.dart';
import 'package:flutter_f1/utils/routes.dart';
import 'package:flutter_f1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: myStore(), child: myApp()));
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}

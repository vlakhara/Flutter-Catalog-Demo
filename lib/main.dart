import 'package:flutter/material.dart';
import 'package:flutter_f1/pages/HomePage.dart';
import 'package:flutter_f1/pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/HomePage": (context) => HomePage(),
        "/LoginPage": (context) => LoginPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jump/Pages/login.dart';

void main() => runApp(
      Foot(),
    );

class Foot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      // themeMode: ThemeMode.system,
      // theme: MyThemes.lightTheme,
      theme: new ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            headline6: TextStyle(color: Colors.black),
          ),
          fontFamily: "Visby"),
    );
  }
}

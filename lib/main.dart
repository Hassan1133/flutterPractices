import 'package:flutter/material.dart';
import 'package:my_app/pages/homepage.dart';
import 'package:my_app/pages/loginpage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"/homePage": (context) => homePage(), "/": (context) => login()},
      //darkTheme: ThemeData(brightness: Brightness.dark),
      //theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

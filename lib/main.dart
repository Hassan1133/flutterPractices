import 'package:flutter/material.dart';
import 'package:my_app/pages/homepage.dart';
import 'package:my_app/pages/loginpage.dart';
import 'package:my_app/utilities/routes.dart';
import 'package:my_app/widgets/themes.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: myTheme.lightTheme(context),

      darkTheme: myTheme.darkTheme(context),
      routes: {
        "/": (context) => homePage(),
        myRoutes.loginRoute: (context) => login()
      },
      //darkTheme: ThemeData(brightness: Brightness.dark),
      //theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

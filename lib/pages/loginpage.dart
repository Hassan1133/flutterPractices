import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 70, 0, 50),
          child: Image.asset(
            'assets/images/Register-icon.png',
          ),
        ),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 35),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 15),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "User Name : ",
              hintText: "enter your name",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password : ",
              hintText: "enter your password",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: ElevatedButton(
            child: Text("Login"),
            onPressed: () {},
          ),
        )
      ],
    ));
  }
}

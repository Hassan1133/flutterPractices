import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/utilities/routes.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = " ";
  bool changeBtn = false;
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
          "Welcome $name",
          style: TextStyle(fontSize: 35),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 15),
          child: TextFormField(
            onChanged: (value) {
              name = value;
              setState(() {});
            },
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
        SizedBox(height: 50),
        InkWell(
          onTap: () async {
            setState(() {
              changeBtn = true;
            });

            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, myRoutes.homeRoute);
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: 45,
            width: changeBtn ? 50 : 80,
            alignment: Alignment.center,
            child: changeBtn
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: changeBtn ? BoxShape.circle : BoxShape.rectangle
                //borderRadius: BorderRadius.circular(changeBtn ? 12 : 8)
                ),
          ),
        )

        // ElevatedButton(
        //     child: Text("Login"),
        //     onPressed: () {
        //       Navigator.pushNamed(context, myRoutes.homeRoute);
        //     },
        //   ),
      ],
    ));
  }
}

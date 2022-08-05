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
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeBtn = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, myRoutes.homeRoute);
      setState(() {
        changeBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Form(
      key: _formKey,
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Username cannot be empty";
                }
                return null;
              },
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password cannot be empty";
                } else if (value.length < 8) {
                  return "Password should be at least 8 letters";
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 50),
          Material(
            borderRadius: BorderRadius.circular(changeBtn ? 25 : 8),
            color: Colors.blue,
            child: InkWell(
              onTap: () => moveToHome(context),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 45,
                width: changeBtn ? 45 : 80,
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
                //decoration: BoxDecoration(
                //shape: changeBtn ? BoxShape.circle : BoxShape.rectangle
                //),
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
      ),
    ));
  }
}

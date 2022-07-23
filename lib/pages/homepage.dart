import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hassan's App"),
      ),
      body: Center(
        child: Container(child: Text("blue")),
      ),
      drawer: Drawer(),
    );
  }
}

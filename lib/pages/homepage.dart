import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/widgets/drawer.dart';

import '../widgets/itemWidget.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: catalogModel.items.length,
          itemBuilder: (context, index) {
            return itemWidget(
              item: catalogModel.items[index],
            );
          },
        ),
      ),
      drawer: myDrawer(),
    );
  }
}

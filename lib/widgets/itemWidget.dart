import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';

class itemWidget extends StatelessWidget {
  final Item item;

  const itemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(side: BorderSide(color: Colors.black, width: 0.2)),
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc, textScaleFactor: 1),
        trailing: Text(
          '\$${item.price.toString()}',
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}

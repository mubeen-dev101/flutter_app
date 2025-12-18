import 'package:flutter/material.dart';
import 'package:flutter_new_project_1/models/flutter.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        trailing: Text(
          "\$${item.Price}",
          textScaler: TextScaler.linear(1.9),
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(item.desc),
      ),
    );
  }
}

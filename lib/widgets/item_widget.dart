import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          '\$${item.price.toString()}',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('you just tapped ${item.name} ${item.desc}')));
        },
      ),
    );
  }
}

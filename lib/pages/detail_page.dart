import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class DetailPage extends StatelessWidget {
  final Item catalog;

  const DetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image)),
            Center(
              child: Text(
                catalog.name,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                catalog.desc,
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '\$${catalog.price.toString()}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('buying not support yet')));
                      }, child: Text('Buy')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatalaogHeader extends StatelessWidget {
  const CatalaogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Catalog App',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          'Trending products',
          style: TextStyle(fontSize: 20, color: Colors.black),
        )
      ],
    );
  }
}
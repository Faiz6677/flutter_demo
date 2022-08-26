import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import '../widgets/catalog_header.dart';
import '../widgets/drawer.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 5));
    final catalogJson =
        await rootBundle.loadString('assets/files/catalog.json');
    final decodeData = jsonDecode(catalogJson);
    final productData = decodeData['products'];
    CatalogModel.items =
        List.from(productData).map<Item>((e) => Item.fromMap(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        drawer: MyDawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return CartPage();
            }));
          },
          child: Icon(Icons.shopping_cart_rounded),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
            decoration: BoxDecoration(color: Colors.white70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalaogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  Expanded(child: CatalogList())
                else
                  Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
              ],
            ),
          ),
        ));
  }
}




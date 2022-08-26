import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shopping List'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 12,
            itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.done,size: 20,),
                Text('item',style: TextStyle(fontSize: 40),),
                Icon(Icons.remove_circle_outline_rounded)
              ],
            ),
          );
        }),
      ),
    );
  }
}

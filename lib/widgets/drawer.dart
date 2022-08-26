import 'package:flutter/material.dart';

class MyDawer extends StatelessWidget {
  const MyDawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(child: Image.asset('assets/image/Ellipse 1.png') ,
                  ),
                  accountName: Text(
                    'vikram sarkar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text(
                    'Gmail.com',
                    style: TextStyle(fontSize: 15),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.payment,
                size: 35,
                color: Colors.white,
              ),
              title: Text(
                'payment',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              subtitle: Text(
                'all kind cards accepted ',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                size: 35,
                color: Colors.white,
              ),
              title: Text(
                'payment',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              subtitle: Text(
                'all kind cards accepted ',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                size: 35,
                color: Colors.white,
              ),
              title: Text(
                'payment',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              subtitle: Text(
                'all kind cards accepted ',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                size: 35,
                color: Colors.white,
              ),
              title: Text(
                'payment',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              subtitle: Text(
                'all kind cards accepted ',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

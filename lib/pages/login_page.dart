
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formKey = GlobalKey<FormState>();

  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool ischange = false;

  moveToHome(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      setState(() {
        ischange = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('assets/image/login.png'),
              Divider(),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: userIdController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please inter your Id';
                  }
                },
                decoration: InputDecoration(
                    labelText: 'username',
                    hintText: 'inter gmail Id',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              Divider(),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty || value.length < 6) {
                    return 'please inter your password  and cannot be less then 6';
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'inter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(40)),
                    width: ischange ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    duration: Duration(seconds: 1),
                    child: ischange
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

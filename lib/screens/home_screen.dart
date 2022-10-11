// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:child_learning_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(LoginScreen loginScreen, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenStates createState() => _HomeScreenStates();
}

class _HomeScreenStates extends State<HomeScreen> {
  var child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Child Learning App"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    "assets/login.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Email",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                ActionChip(
                  label: Text("Login"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ));
  }
}

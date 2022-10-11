import 'package:child_learning_app/screens/home_screen.dart';
import 'package:child_learning_app/screens/login_screen.dart';
import 'package:child_learning_app/screens/registation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChildLearningApp());
}

class ChildLearningApp extends StatelessWidget {
  const ChildLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Child Learning App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(LoginScreen(RegistrationScreen())),
    );
  }
}

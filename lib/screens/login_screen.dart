// ignore_for_file: prefer_const_constructors

import 'package:child_learning_app/screens/home_screen.dart';
import 'package:child_learning_app/screens/registation_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen(RegistrationScreen registrationScreen, {Key? key})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _LoginScreenStates createState() => _LoginScreenStates();
}

class _LoginScreenStates extends State<LoginScreen> {
// form key
  final _formKey = GlobalKey<FormState>();

// editing controller
  // ignore: unnecessary_new
  final TextEditingController emailController = new TextEditingController();
  // ignore: unnecessary_new
  final TextEditingController passwardController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //emailid field
    // ignore: unused_local_variable
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validate: {} {},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    // ignore: unused_local_variable
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwardController,

        //validate: {} {},
        onSaved: (value) {
          passwardController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Passward",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

    // ignore: unused_local_variable
    final loginButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text(
            "LogIn",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: SizedBox(
                          height: 200,
                          child: Image.asset(
                            "assets/login.jpg",
                            fit: BoxFit.contain,
                          )),
                    ),
                    const SizedBox(height: 45),
                    emailField,
                    const SizedBox(height: 25),
                    passwordField,
                    const SizedBox(height: 35),
                    loginButton,
                    const SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistationScreen()));
                            },
                            child: Text("SignUp",
                                style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                          ),
                        ])
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  RegistationScreen() {}
}

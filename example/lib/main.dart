import 'dart:developer';
import 'package:email_validator_package/email_validator_package.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyExample(),
    );
  }
}

class MyExample extends StatelessWidget {
  const MyExample({super.key});

  @override
  Widget build(BuildContext context) {
    String email = "addweb@yopmail.com";
    bool isValidEmail = EmailValidator().validateEmail(email);

    log("isValidEmail  $isValidEmail");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Email Validation"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Text("$isValidEmail"),
                TextFormField(
                  validator: (value) {
                    //your logic
                    if (value == null || value.isEmpty) return "Enter data";
                    // if(EmailValidator.checkEmailValidator())
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    disabledBorder: OutlineInputBorder(),
                    focusedErrorBorder: OutlineInputBorder(),
                    hintText: 'Email Address',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String email = "addweb@yopmail.com";
    String email2 = 'invalid_email@';
    bool isValidEmail = EmailValidator.validateEmail(email);
    bool isValidEmail2 = EmailValidator.validateEmail(email2);

    log("isValidEmail  $isValidEmail");
    log("isValidEmail22  $isValidEmail2");

    return Scaffold(
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
                  /// your logic
                  if (value!.isEmpty) {
                    return "Please Enter Email";
                  } else if (EmailValidator.validateEmail(value)) {
                    return "Please Enter Valid Email";
                  }
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
    );
  }
}

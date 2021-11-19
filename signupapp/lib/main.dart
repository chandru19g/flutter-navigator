import 'package:flutter/material.dart';
import 'signup.dart';
import 'homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "User Details",
      theme: ThemeData.dark(),
      home: const SignUpPage(),
    );
  }
}

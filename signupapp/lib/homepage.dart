import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name, email, mobile, college, password;

  const HomePage({
    Key? key,
    required this.name,
    required this.email,
    required this.mobile,
    required this.college,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text("Student Info"),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
            ),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(
                    50.0,
                  ),
                ),
                const Image(
                  image: AssetImage("images/logo.png"),
                  width: 100.0,
                  height: 100.0,
                ),
                ListTile(
                  leading: const Icon(Icons.people),
                  title: Text(name),
                ),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: Text(email),
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: Text(mobile),
                ),
                ListTile(
                  leading: const Icon(Icons.school),
                  title: Text(college),
                ),
                ListTile(
                  leading: const Icon(Icons.password),
                  title: Text(password),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

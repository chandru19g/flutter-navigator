import 'package:flutter/material.dart';
import 'package:signupapp/homepage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _key = GlobalKey();
  bool _autoValidate = false;
  late String name, email, mobile, college, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text("SignUp"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                const Image(
                  image: AssetImage("images/logo.png"),
                  width: 100.0,
                  height: 100.0,
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter Name';
                      }
                    },
                    decoration: const InputDecoration(labelText: 'Name'),
                    onSaved: (input) => name = input!,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter Email';
                      }
                    },
                    decoration: const InputDecoration(labelText: 'Email'),
                    onSaved: (input) => email = input!,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter Mobile Number';
                      }
                    },
                    decoration: const InputDecoration(labelText: 'Mobile'),
                    onSaved: (input) => mobile = input!,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.school),
                  title: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter College Name';
                      }
                    },
                    decoration:
                        const InputDecoration(labelText: 'College Name'),
                    onSaved: (input) => college = input!,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.password),
                  title: TextFormField(
                    obscureText: true,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter College Name';
                      }
                    },
                    decoration: const InputDecoration(labelText: 'Password'),
                    onSaved: (input) => password = input!,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                ButtonTheme(
                  child: ElevatedButton(
                    onPressed: _sendToNextScreen,
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      primary: Colors.redAccent,
                    ),
                  ),
                  height: 40.0,
                  minWidth: 200.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _sendToNextScreen() {
    if (_key.currentState!.validate()) {
      _key.currentState!.save();

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(
            name: name,
            mobile: mobile,
            email: email,
            college: college,
            password: password,
          ),
        ),
      );
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}

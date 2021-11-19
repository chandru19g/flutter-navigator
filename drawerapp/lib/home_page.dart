import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer App"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Chandru"),
              accountEmail: Text("chandru@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text("CH"),
              ),
            ),
            const ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: const Text("Category"),
              trailing: const Icon(Icons.card_travel),
              onTap: () => Navigator.of(context).pushNamed("/category"),
            ),
            const ListTile(
              title: Text("Profile"),
              trailing: Icon(Icons.more),
            ),
            const Divider(),
            const ListTile(
              title: Text("Mascot"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: const Text("Close"),
              trailing: const Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Home Page"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.cloud_circle),
      ),
    );
  }
}

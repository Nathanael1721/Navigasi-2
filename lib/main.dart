import 'package:drawer/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
              // ke home
            } else if (value == 1) {
              // ke akun
            }
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app), label: "Exit"),
          ]),
      appBar: AppBar(title: Text("Hello Navigation Drawer")),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            )
          ],
        ),
      ),
    );
  }
}

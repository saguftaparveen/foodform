import 'package:flutter/material.dart';
import 'package:foodform/addCategory.dart';
import 'package:foodform/addProduct.dart';
import 'package:foodform/addRestro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddRestro(),
                  ),
                );
              },
              child: Text("Add Restaurant"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddCategory(),
                  ),
                );
              },
              child: Text("Add Category"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddProduct(),
                  ),
                );
              },
              child: Text("Add Products"),
            ),
          ],
        ),
      ),
    );
  }
}

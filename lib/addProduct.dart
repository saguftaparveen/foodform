import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  AddProduct({Key key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController name = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController restroName = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: "add Product name",
              ),
            ),
            TextField(
              controller: image,
              decoration: InputDecoration(
                labelText: "add image path",
              ),
            ),
            TextField(
              controller: category,
              decoration: InputDecoration(
                labelText: "add Category name",
              ),
            ),
            TextField(
              controller: restroName,
              decoration: InputDecoration(
                labelText: "add restaurant Name",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

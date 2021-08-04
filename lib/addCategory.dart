import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  AddCategory({Key key}) : super(key: key);

  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController restroName = TextEditingController();
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
                labelText: "add Category name",
              ),
            ),
            TextField(
              controller: image,
              decoration: InputDecoration(
                labelText: "add image path",
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

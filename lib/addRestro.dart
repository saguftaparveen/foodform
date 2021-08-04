import 'package:flutter/material.dart';

class AddRestro extends StatefulWidget {
  AddRestro({Key key}) : super(key: key);

  @override
  _AddRestroState createState() => _AddRestroState();
}

class _AddRestroState extends State<AddRestro> {
  TextEditingController name = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController contact = TextEditingController();
  //TextEditingController restroId = TextEditingController();
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
                labelText: "add restaurant name",
              ),
            ),
            TextField(
              controller: image,
              decoration: InputDecoration(
                labelText: "add image path",
              ),
            ),
            TextField(
              controller: address,
              decoration: InputDecoration(
                labelText: "add address",
              ),
            ),
            TextField(
              controller: contact,
              decoration: InputDecoration(
                labelText: "add contact",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

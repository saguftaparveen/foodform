import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: "add restaurant name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: image,
                    decoration: InputDecoration(
                      labelText: "add image path",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: address,
                    decoration: InputDecoration(
                      labelText: "add address",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: contact,
                    decoration: InputDecoration(
                      labelText: "add contact",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    addrestro();
                    name.clear();
                    image.clear();
                    address.clear();
                    contact.clear();
                  },
                  child: Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  addrestro() async {
    await firestore.collection("Restro").doc().set({
      "name": name.text,
      "image": image.text,
      "address": address.text,
      "contact": contact.text,
    });
  }
}

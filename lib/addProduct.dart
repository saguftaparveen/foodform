import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firesTore = FirebaseFirestore.instance;

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
                      labelText: "add Product name",
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
                    controller: category,
                    decoration: InputDecoration(
                      labelText: "add Category name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: restroName,
                    decoration: InputDecoration(
                      labelText: "add restaurant Name",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    addProductMethod();
                    name.clear();
                    image.clear();
                    category.clear();
                    restroName.clear();
                  },
                  child: Text("Add product"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  addProductMethod() async {
    await firesTore.collection("Product").doc().set({
      "name": name.text,
      "image": image.text,
      "category": category.text,
      "restroName": restroName.text,
    });
  }
}

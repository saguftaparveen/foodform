import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore fireStore = FirebaseFirestore.instance;

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
                      labelText: "add Category name",
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
                    controller: restroName,
                    decoration: InputDecoration(
                      labelText: "add restaurant Name",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    addCategoryMethod();
                    name.clear();
                    image.clear();
                    restroName.clear();
                  },
                  child: Text("Add Category"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  addCategoryMethod() async {
    await fireStore.collection("Category").doc().set({
      "name": name.text,
      "image": image.text,
      "restroName": restroName.text,
    });
  }
}

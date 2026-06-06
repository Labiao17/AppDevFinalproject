import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin - Add Pet")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Pet Name"),
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(labelText: "Age"),
            ),
            TextField(
              controller: descController,
              decoration: InputDecoration(labelText: "Description"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // later connect to backend
              },
              child: Text("Add Pet"),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class q18 extends StatefulWidget {
  const q18({super.key});

  @override
  State<q18> createState() => _q18State();
}

class _q18State extends State<q18> {
  TextEditingController nameController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  String selectedCategory = "Bug";
  List<String> categories = ["Bug", "Suggestion", "Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Feedback Form")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: commentController,
              decoration: InputDecoration(labelText: "Comments"),
              maxLines: 3,
            ),
            DropdownButton<String>(
              value: selectedCategory,
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
              items: categories.map((category) {
                return DropdownMenuItem(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    content: Text("Feedback Submitted"),
                  ),
                );
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}

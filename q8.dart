import 'package:flutter/material.dart';

class q8 extends StatefulWidget {
  const q8({super.key});

  @override
  State<q8> createState() => _q8State();
}

class _q8State extends State<q8> {
  List<String> names = ["kuldeep", "kd", "jadeja", "hello"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.person),

            title: Text(names[index]),

            onTap: () {
              print("Name Tapped");
            },
          );
        },
      ),
    );
  }
}

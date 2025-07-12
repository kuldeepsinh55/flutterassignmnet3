import 'package:flutter/material.dart';

class q11 extends StatefulWidget {
  const q11({super.key});

  @override
  State<q11> createState() => _q11State();
}

class _q11State extends State<q11> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Value : $value")),

      body: Row(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                value++;
              });
            },
            icon: Icon(Icons.add),
            label: Text("Increment"),
          ),

          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                value--;
              });
            },
            icon: Icon(Icons.minimize_outlined),
            label: Text("Decrement"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class q2 extends StatefulWidget {
  const q2({super.key});

  @override
  State<q2> createState() => _q2State();
}

class _q2State extends State<q2> {
  int counter = 0;

  void increase() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("floatingactionbutton")),

      body: Center(child: Text("Counter:$counter",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),

      floatingActionButton: FloatingActionButton(onPressed: increase,child: Icon(Icons.add),),
    );
  }
}

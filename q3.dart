import 'package:flutter/material.dart';

class q3 extends StatelessWidget {
  const q3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Text widget"),),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("hello,flutter!",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.deepPurpleAccent),)),

          Center(child: Text("hello,flutter!",style: TextStyle(fontSize:40, fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class q5 extends StatefulWidget {
  const q5({super.key});

  @override
  State<q5> createState() => _q5State();
}

class _q5State extends State<q5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Container(height: 200,
        width: 200,
        color: Colors.deepOrangeAccent,),

         Container(height: 111,
        width: 111,
        color: Colors.deepPurpleAccent,),

         Container(height: 70,
        width: 70,
        color: Colors.blueAccent,)
      ],),
    );
  }
}
import 'package:flutter/material.dart';

class q4 extends StatefulWidget {
  const q4({super.key});

  @override
  State<q4> createState() => _q4State();
}

class _q4State extends State<q4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("LoginScreen"),),
    
    body: Column(
      
      children: [
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: TextField(
                decoration: InputDecoration(
          labelText: "E-Mail",
          hintText: "Enter the E-Mail Address",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            ),
            prefixIcon: Icon(Icons.email),
                ),
              ),
        ),

    Padding(
      padding: const EdgeInsets.all(17.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter the Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            ),
            prefixIcon: Icon(Icons.password),
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: Text("Done")),
    )
      ],
    )
    
    );
  }
}
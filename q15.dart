import 'package:flutter/material.dart';

class q15 extends StatelessWidget {
  const q15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Asset")),
      body: Center(
        child: Image.asset(
          "assets/nature.jpg",
          fit: BoxFit.cover,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}

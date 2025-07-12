import 'package:flutter/material.dart';

class q7 extends StatefulWidget {
  const q7({super.key});

  @override
  State<q7> createState() => _q7State();
}

class _q7State extends State<q7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('4 Image Grid')),
      body: GridView.count(
        crossAxisCount: 4, 
        children: [
          Image.network('https://picsum.photos/200?1'),
          Image.network('https://picsum.photos/200?2'),
          Image.network('https://picsum.photos/200?3'),
          Image.network('https://picsum.photos/200?4'),
        ],
      ),
    );
  }
  }

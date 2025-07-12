import 'package:flutter/material.dart';

class q13 extends StatefulWidget {
  const q13({super.key});

  @override
  State<q13> createState() => _q13State();
}

class _q13State extends State<q13> {
  String imageUrl = "https://picsum.photos/id/237/200/300";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Changer")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (imageUrl == "https://picsum.photos/id/237/200/300") {
                  imageUrl = "https://picsum.photos/id/238/200/300";
                } else {
                  imageUrl = "https://picsum.photos/id/237/200/300";
                }
              });
            },
            child: Text("Change Image"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';

class q16 extends StatefulWidget {
  const q16({super.key});

  @override
  State<q16> createState() => _q16State();
}

class _q16State extends State<q16> {
  PageController controller = PageController();
  int currentPage = 0;

  List<String> images = [
    'https://picsum.photos/id/1001/400/300',
    'https://picsum.photos/id/1002/400/300',
    'https://picsum.photos/id/1003/400/300',
    'https://picsum.photos/id/1004/400/300',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentPage < images.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image.network Carousel")),
      body: PageView.builder(
        controller: controller,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Center(
            child: Image.network(
              images[index],
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class BottomNavApp extends StatefulWidget {
  const BottomNavApp({super.key});

  @override
  State<BottomNavApp> createState() => _BottomNavAppState();
}

class _BottomNavAppState extends State<BottomNavApp> {
  int selectedIndex = 0;

  List<Widget> screens = [
    Center(child: Text("News Screen", style: TextStyle(fontSize: 24))),
    Center(child: Text("Messages Screen", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile Screen", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation")),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.article), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class q19 extends StatefulWidget {
  const q19({super.key});

  @override
  State<q19> createState() => _q19State();
}

class _q19State extends State<q19> {
  TextEditingController searchController = TextEditingController();
  List<String> allItems = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Grapes",
    "Guava",
    "Mango",
    "Orange",
    "Pineapple",
    "Strawberry"
  ];
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = allItems;
    searchController.addListener(() {
      setState(() {
        filteredItems = allItems
            .where((item) => item
                .toLowerCase()
                .contains(searchController.text.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Bar")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: "Search",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

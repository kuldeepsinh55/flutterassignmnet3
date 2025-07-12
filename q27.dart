import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomList(),
    debugShowCheckedModeBanner: false,
  ));
}

class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  List<String> items = ["Apple", "Banana", "Cherry", "Date", "Grapes"];

  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom List")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.blue),
            title: Text(items[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                deleteItem(index);
              },
            ),
          );
        },
      ),
    );
  }
}

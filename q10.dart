import 'package:flutter/material.dart';

class q10 extends StatefulWidget {
  const q10({super.key});

  @override
  State<q10> createState() => _q10State();
}

class _q10State extends State<q10> {
  final List<String> item = [
    "onion",
    "potatos",
    "mango",
    "cabbage",
    "capsicum",
  ];



  int totalIitem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("E-Commerce", style: TextStyle(color: Colors.blue)),
            Text(
              "Totalitems : $totalIitem",
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: item.length,

        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: ListTile(
              leading: Text("${index + 1}"),
              title: Text(
                item[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
             
              trailing: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    totalIitem++;
                   
                  });
                },
                icon: Icon(Icons.add),
                label: Text("Add to Cart"),
              ),
            ),
          );
        },
      ),
    );
  }
}

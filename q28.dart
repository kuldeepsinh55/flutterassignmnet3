import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProductListPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      "name": "Shoes",
      "price": "₹1500",
      "image": "https://picsum.photos/id/21/200/200"
    },
    {
      "name": "Watch",
      "price": "₹2500",
      "image": "https://picsum.photos/id/22/200/200"
    },
    {
      "name": "Headphones",
      "price": "₹1800",
      "image": "https://picsum.photos/id/23/200/200"
    },
    {
      "name": "Backpack",
      "price": "₹1200",
      "image": "https://picsum.photos/id/24/200/200"
    },
    {
      "name": "Sunglasses",
      "price": "₹999",
      "image": "https://picsum.photos/id/25/200/200"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                width: 160,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      product['image'],
                      height: 130,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Text(
                      product['name'],
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      product['price'],
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

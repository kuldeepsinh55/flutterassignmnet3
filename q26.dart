import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: InfiniteList(),
    debugShowCheckedModeBanner: false,
  ));
}

class InfiniteList extends StatefulWidget {
  const InfiniteList({super.key});

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  ScrollController scrollController = ScrollController();
  List<int> items = List.generate(20, (index) => index);
  bool loading = false;

  void loadMore() {
    if (!loading) {
      setState(() {
        loading = true;
      });

      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          int currentLength = items.length;
          items.addAll(List.generate(10, (index) => currentLength + index));
          loading = false;
        });
      });
    }
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        loadMore();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Infinite Scroll")),
      body: ListView.builder(
        controller: scrollController,
        itemCount: items.length + 1,
        itemBuilder: (context, index) {
          if (index < items.length) {
            return ListTile(title: Text("Item ${items[index]}"));
          } else {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}

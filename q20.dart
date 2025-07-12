import 'package:flutter/material.dart';

class q20 extends StatefulWidget {
  const q20({super.key});

  @override
  State<q20> createState() => _q20State();
}

class _q20State extends State<q20> {
  TextEditingController taskController = TextEditingController();
  List<Map<String, dynamic>> tasks = [];

  void addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        tasks.add({'title': taskController.text, 'completed': false});
        taskController.clear();
      });
    }
  }

  void toggleTask(int index) {
    setState(() {
      tasks[index]['completed'] = !tasks[index]['completed'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Manager")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(labelText: "Enter Task"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addTask,
              child: Text("Add Task"),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(tasks[index]['title']),
                    value: tasks[index]['completed'],
                    onChanged: (value) {
                      toggleTask(index);
                    },
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

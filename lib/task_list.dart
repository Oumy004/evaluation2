import 'package:flutter/material.dart';
import 'task_form.dart';
import 'task_details.dart';

class TaskListPage extends StatelessWidget {
 
  final List<Map<String, String>> tasks = [
    {'title': 'Task 1', 'description': 'Description of Task 1'},
    {'title': 'Task 2', 'description': 'Description of Task 2'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task List')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]['title']!),
            subtitle: Text(tasks[index]['description']!),
            onTap: () {
             
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailsPage(task: tasks[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TaskFormPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

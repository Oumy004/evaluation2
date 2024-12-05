import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  final Map<String, String> task;

  TaskDetailsPage({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(task['title']!)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${task['title']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Description: ${task['description']}', style: TextStyle(fontSize: 16)),
            
          ],
        ),
      ),
    );
  }
}

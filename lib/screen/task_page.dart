import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<TaskPage> {
  List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Task Board', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: tasks.map((task) {
          return ListTile(
            title: Text(task, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Personal task management and planning solution for planning your day, week & months'),
                SizedBox(height: 10),
                // Text('12:55 pm 25th May, 2023',style: TextStyle(fontSize: 12,  color: Colors.grey), textAlign: TextAlign.end),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '12:55 pm 25th May, 2023',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            tasks.add('Task ${tasks.length + 1}',);
          });
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.black,
      ),
    );
  }

  // Card buildTaskCard(String taskTitle, String taskDescription, String taskTime) {
  //   return Card(
  //     child: ListTile(
  //       title: Text(taskTitle),
  //       subtitle: Text('$taskDescription\n$taskTime'),
  //     ),
  //   );
  // }
}
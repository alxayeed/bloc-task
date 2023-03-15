import 'package:flutter/material.dart';

import '../../data/models/task.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);

  final List<Task> allTask = [
    Task(id: "id1", title: "Task 1"),
    Task(id: "id2", title: "Task 2"),
    Task(id: "id3", title: "Task 3"),
    Task(id: "id4", title: "Task 4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Task'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            const Center(
              child: Chip(label: Text('Tasks')),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: allTask.length,
                itemBuilder: (context, index) {
                  Task task = allTask[index];
                  return ListTile(
                    title: Text(task.title),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}

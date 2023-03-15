import 'package:bloc_task/blocs/bloc_imports.dart';
import 'package:flutter/material.dart';

import '../../data/models/task.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

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
              child: BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {
                  List<Task> allTask = state.allTask;

                  return ListView.builder(
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

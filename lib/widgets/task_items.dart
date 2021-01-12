import 'package:flutter/material.dart';

import 'package:todoey_flutter/widgets/task_item.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskItems extends StatefulWidget {
  @override
  _TaskItemsState createState() => _TaskItemsState();
}

class _TaskItemsState extends State<TaskItems> {
  List<Task> tasks = [
    Task(title: 'List Item 01', isDone: false),
    Task(title: 'List Item 02', isDone: true),
    Task(title: 'List Item 03', isDone: false),
  ];

  void toggleCheckbox(int i) {
    setState(() {
      tasks[i].toggle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return TaskItem(
          text: tasks[i].title,
          isChecked: tasks[i].isDone,
          changeState: () => setState(() {
            tasks[i].toggle();
          }),
        );
      },
      itemCount: tasks.length,
    );
  }
}

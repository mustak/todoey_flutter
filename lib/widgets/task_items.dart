import 'package:flutter/material.dart';

import 'package:todoey_flutter/widgets/task_item.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskItems extends StatelessWidget {
  final List<Task> tasks;
  final Function toggleTask;

  TaskItems({this.tasks, this.toggleTask});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return TaskItem(
          text: tasks[i].title,
          isChecked: tasks[i].isDone,
          changeState: () => toggleTask(i),
        );
      },
      itemCount: tasks.length,
    );
  }
}

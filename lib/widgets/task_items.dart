import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_flutter/widgets/task_item.dart';
import 'package:todoey_flutter/models/tasks_store.dart';

class TaskItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksStore>(
      builder: (context, tasksStore, child) => ListView.builder(
        itemBuilder: (context, i) {
          final task = tasksStore.tasks[i];
          return TaskItem(
            text: task.title,
            isChecked: task.isDone,
            changeState: () => tasksStore.toggleCheckbox(i),
            deleteTask: () => tasksStore.deleteTask(i),
          );
        },
        itemCount: tasksStore.taskCount,
      ),
    );
  }
}

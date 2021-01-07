import 'package:flutter/material.dart';

import 'package:todoey_flutter/widgets/task_item.dart';

class TaskItems extends StatelessWidget {
  const TaskItems();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskItem(text: 'List Item 01', value: false),
        TaskItem(text: 'List Item 02', value: false),
      ],
    );
  }
}

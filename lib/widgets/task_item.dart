import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function changeState;
  final Function deleteTask;

  const TaskItem(
      {@required this.text, this.isChecked, this.changeState, this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onVerticalDragEnd: (dragEndDetails) {
          deleteTask();
        },
        child: Text(
          text,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
              decorationColor: Colors.red.withAlpha(120),
              decorationThickness: 4.0),
        ),
      ),
      leading: Checkbox(
        activeColor: Colors.lightBlue,
        value: isChecked,
        onChanged: (value) => changeState(),
      ),
    );
  }
}

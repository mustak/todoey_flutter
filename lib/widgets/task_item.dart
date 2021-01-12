import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function changeState;

  const TaskItem({@required this.text, this.isChecked, this.changeState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            decorationColor: Colors.red.withAlpha(120),
            decorationThickness: 4.0),
      ),
      leading: Checkbox(
        activeColor: Colors.lightBlue,
        value: isChecked,
        onChanged: (value) => changeState(),
      ),
    );
  }
}

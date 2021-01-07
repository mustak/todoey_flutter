import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String text;
  final bool value;

  const TaskItem({@required this.text, this.value});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: Checkbox(
        value: value,
        onChanged: (value) {},
      ),
    );
  }
}

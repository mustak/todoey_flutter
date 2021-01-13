import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTask;

  final TextEditingController textController = TextEditingController();

  AddTaskScreen({this.addTask});

  @override
  Widget build(BuildContext context) {
    String _newTaskTitle;

    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Text(
          //   'Add New Task',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 20,
          //     color: Colors.blue,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: TextField(
              onChanged: (newValue) {
                _newTaskTitle = newValue;
              },
              controller: textController,
              style: TextStyle(fontSize: 20),
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'Enter new task',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gapPadding: 10,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 0,
                  )),
            ),
          ),
          FlatButton(
            onPressed: () {
              addTask(_newTaskTitle);
              textController.clear();
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: Colors.lightBlue,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
          )
        ],
      ),
    );
  }
}

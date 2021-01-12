import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 30,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Add New Task',
            style: TextStyle(
              fontSize: 28,
              color: Colors.blue,
            ),
          ),
          TextField(
            style: TextStyle(fontSize: 20),
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'Enter a task name',
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
          FlatButton(
            onPressed: () {},
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

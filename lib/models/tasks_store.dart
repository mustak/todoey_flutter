import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'task.dart';

class TasksStore extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'TS: List Item 01', isDone: false),
    Task(title: 'TS: List Item 02', isDone: false),
    Task(title: 'TS: List Item 03', isDone: false),
    Task(title: 'TS: List Item 04', isDone: true),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void toggleCheckbox(int i) {
    _tasks[i].toggle();
    notifyListeners();
  }

  void addTask(String title) {
    final Task newTask = Task(title: title);
    _tasks.add(newTask);
    notifyListeners();
  }
}

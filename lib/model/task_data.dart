import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/task.dart';
// ignore_for_file: prefer_const_constructors

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Task 1'),
    Task(name: 'Task 2'),
    Task(name: 'Task 3'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}

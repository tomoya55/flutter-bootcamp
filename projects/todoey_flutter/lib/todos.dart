import 'package:flutter/material.dart';

class TodoItem {
  final String text;
  bool done;
  TodoItem({this.text, this.done});
}

class TaskModel extends ChangeNotifier {
  final List<TodoItem> tasks = [
    TodoItem(text: "Buy milk", done: false),
    TodoItem(text: "Buy eggs", done: false),
    TodoItem(text: "Buy bread", done: true),
  ];

  void toggle(int index, bool val) {
    tasks[index].done = val;
    notifyListeners();
  }

  void addTask(TodoItem item) {
    tasks.add(item);
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}

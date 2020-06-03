import 'package:flutter/material.dart';
import 'package:todoey_flutter/todos.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(tasks: todos),
    );
  }
}

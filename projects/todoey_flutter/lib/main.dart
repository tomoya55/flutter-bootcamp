import 'package:flutter/material.dart';
import 'package:todoey_flutter/todos.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context) {
        return "hello";
      },
      child: MaterialApp(
        home: TasksScreen(tasks: todos),
      ),
    );
  }
}

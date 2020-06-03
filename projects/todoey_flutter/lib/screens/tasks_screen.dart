import 'package:flutter/material.dart';
import 'package:todoey_flutter/todos.dart';
import 'package:todoey_flutter/widgets/add_task.dart';

class TasksScreen extends StatefulWidget {
  final List<TodoItem> tasks;
  TasksScreen({this.tasks});

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                child: AddTask(onPressed: (String text) {
                  setState(() {
                    widget.tasks.add(
                      TodoItem(text: text, done: false),
                    );
                  });
                }),
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
              ),
            ),
            isScrollControlled: true,
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Text(
          '+',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 0.0,
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(
                  tasks: widget.tasks,
                  onChanged: (bool val, int index) {
                    print('onCheckChanged $val');
                    setState(() {
                      widget.tasks[index].done = val;
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  final List<TodoItem> tasks;
  final Function onChanged;
  TasksList({this.tasks, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskItem(
            todo: tasks[index],
            onCheckChanged: (bool val) {
              onChanged(val, index);
            });
      },
      itemCount: tasks.length,
    );
  }
}

class TaskItem extends StatelessWidget {
  final TodoItem todo;
  final Function onCheckChanged;
  TaskItem({this.todo, this.onCheckChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            todo.text,
            style: TextStyle(
              fontSize: 20.0,
              decoration:
                  todo.done ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
          Checkbox(
            value: todo.done,
            onChanged: onCheckChanged,
          ),
        ],
      ),
    );
  }
}

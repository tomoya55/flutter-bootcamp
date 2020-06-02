class TodoItem {
  String text;
  bool done;
  TodoItem({this.text, this.done});
}

List<TodoItem> todos = [
  TodoItem(text: "Buy milk", done: false),
  TodoItem(text: "Buy eggs", done: false),
  TodoItem(text: "Buy bread", done: true),
];

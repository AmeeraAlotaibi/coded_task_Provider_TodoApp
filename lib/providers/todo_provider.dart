import 'package:flutter/material.dart';
import '../models/todo.dart';

class ToDoProvider extends ChangeNotifier {
  List<Todo> todoList = [
    Todo(id: 1, title: "First"),
    Todo(id: 2, title: "Second"),
    Todo(id: 2, title: "Third"),
  ];

  void addToDo({required String title}) {
    todoList.add(Todo(id: todoList.length, title: title));
    notifyListeners();
  }

  void toggleTaskStatus({required int id}) {
    var todo = todoList.firstWhere(((element) => element.id == id));
    todo.done = !todo.done;
    notifyListeners();
  }
}

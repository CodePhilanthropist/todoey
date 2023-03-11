import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Learn Dart programming language", isDone: true),
    Task(name: "Understand Flutter architecture and widgets", isDone: true),
    Task(name: "Build projects", isDone: false),
    Task(name: "Learn about state management", isDone: false),
    Task(name: "Master Flutter tools and IDEs", isDone: false),
    Task(name: "Stay up-to-date with Flutter updates", isDone: false),
    Task(name: "Participate in the Flutter community", isDone: false),
    Task(name: "Publish apps", isDone: false),
  ];

  int get taskCount => _tasks.length;
  List<Task> get tasks => _tasks;

  void addTask(String taskTitle, bool taskStatus) {
    _tasks.add(Task(name: taskTitle, isDone: taskStatus));
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'task_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Warpit", isDone: false),
    Task(name: "Tolinjet", isDone: true),
    Task(name: "Hehehe", isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) => TaskTile(
        isChecked: tasks[index].isDone,
        taskTitle: tasks[index].name,
        checkboxCallback: (checkboxState) => setState(
          () {
            tasks[index].toggleDone();
          },
        ),
      ),
    );
  }
}

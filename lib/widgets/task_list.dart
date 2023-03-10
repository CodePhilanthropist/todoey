import 'package:flutter/material.dart';
import '../models/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({required this.tasks});
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) => TaskTile(
        isChecked: widget.tasks[index].isDone,
        taskTitle: widget.tasks[index].name,
        checkboxCallback: (checkboxState) => setState(
          () {
            widget.tasks[index].toggleDone();
          },
        ),
      ),
    );
  }
}

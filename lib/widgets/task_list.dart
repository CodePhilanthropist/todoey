import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import '../models/task.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (BuildContext context, int index) => TaskTile(
        isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        taskTitle: Provider.of<TaskData>(context).tasks[index].name,
        checkboxCallback: (checkboxState) {
          // setState(
          //   () {
          //     Provider.of<TaskData>(context).tasks[index].toggleDone();
          //   },
          // );
        },
      ),
    );
  }
}

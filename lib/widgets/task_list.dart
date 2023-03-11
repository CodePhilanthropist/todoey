import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import '../models/task.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) => TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkboxCallback: (checkboxState) {
              // setState(
              //   () {
              //     Provider.of<TaskData>(context).tasks[index].toggleDone();
              //   },
              // );
            },
          ),
        );
      },
    );
  }
}

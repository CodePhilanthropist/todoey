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
        final task = taskData.tasks;
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) => TaskTile(
            isChecked: task[index].isDone,
            taskTitle: task[index].name,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(task[index]);
            },
            longTap: () {
              taskData.removeTask(task[index]);
            },
          ),
        );
      },
    );
  }
}

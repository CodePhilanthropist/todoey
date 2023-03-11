import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() longTap;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longTap,
    );
  }
}

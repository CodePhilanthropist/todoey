import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkboxCallback(bool newValue) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Task 1",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(checkboxState: isChecked),
      onTap: () {
        setState(() {
          isChecked = true;
        });
      },
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;

  const TaskCheckbox({super.key, required this.checkboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: null,
    );
  }
}

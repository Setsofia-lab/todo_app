import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function longPressCallback;
  TaskTile(
      {required this.ischecked,
      required this.taskTitle,
      required this.checkboxCallBack,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPressCallback;
      },
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: (c) {
          checkboxCallBack(ischecked);
        },
        // ,
      ),
    );
  }
}

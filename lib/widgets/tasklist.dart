import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/tasktile.dart';
import 'package:todo_app/screens/taskscreen.dart';
import 'package:provider/provider.dart';

class Tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
              ischecked: task.isDone,
              taskTitle: task.name,
              checkboxCallBack: (checkBoxState) {
                taskData.updateTask(task);
              },
              longPressCallback: (){
                taskData.deleteTask(task);
              },
              );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}

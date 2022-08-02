import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoye_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              longPressCallBack: () {
                taskData.deleteTask(task);
              },
              isChecked: task.isDone,
              taskTitle: task.name,
              checkBoxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
        );
      },
    );
  }
}

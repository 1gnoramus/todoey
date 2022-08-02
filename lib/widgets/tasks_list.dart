import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoye_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  TasksList({required this.list});

  final List<Task> list;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.list[index].isDone,
          taskTitle: widget.list[index].name,
          checkBoxCallback: (checkboxState) {
            setState(
              () {
                widget.list[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: widget.list.length,
    );
  }
}

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'name')];
  int get taskCount {
    return tasks.length;
  }
}

import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy bread'),
  ];
  int get taskCount {
    return tasks.length;
  }
}


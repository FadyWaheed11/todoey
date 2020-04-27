import 'package:flutter/material.dart';
import 'package:todey/models/task.dart';
import 'package:todey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTile: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxState:(bool checkboxState){
            setState(() {
              tasks[index].toggleDone();
            });
          }
        );
      },
    );
  }
}

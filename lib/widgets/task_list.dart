import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/models/task_data.dart';
import 'package:todey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              deleteTask: (){
                taskData.deleteTask(task);
              },
              taskTile: task.name,
              isChecked: task.isDone,
              checkBoxState: (bool checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

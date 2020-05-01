import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTile;
  final Function checkBoxState;
  final Function deleteTask;
  TaskTile({this.isChecked, this.taskTile,this.checkBoxState,this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
        title: Text(
          taskTile,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkBoxState,
        )
    );
  }
}
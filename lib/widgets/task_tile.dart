import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTile;
  final Function checkBoxState;
  TaskTile({this.isChecked, this.taskTile,this.checkBoxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('My first task.'),
      trailing: Checkbox(value: false),
    );
  }
}

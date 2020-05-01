import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/models/task_data.dart';
import 'package:todey/screens/tasks_screen.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context)=>TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screen/task_screen.dart';
import 'package:todoey/models/task_data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=>TaskData(),
      child:MaterialApp(      
        home: TaskScreen(),
      ),
    );
  }
}

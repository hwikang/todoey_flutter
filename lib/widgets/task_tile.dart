
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckboxState;
  final Function longpressCallback;
  TaskTile({this.isChecked,this.taskTitle,this.toggleCheckboxState,this.longpressCallback});

 
  
  @override
  Widget build(BuildContext context) {
    print(isChecked);
    return ListTile(
      title:Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough : null,
        ),
      ),
      onLongPress: longpressCallback,
      trailing:
          Checkbox(
            value: isChecked,
            activeColor: Colors.lightBlueAccent,
            onChanged:  toggleCheckboxState,

          ),
        
      
    );
  }
}
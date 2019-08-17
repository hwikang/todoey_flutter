
import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
                     //변수명 = Provider.of<TaskData>(context)
                     //변화를 감시할것임 , 리빌드
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context,index){
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              toggleCheckboxState:(state){
                taskData.updateTask(task);  
                
              },
              longpressCallback:(){
                taskData.deleteTask(task);
              }

            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
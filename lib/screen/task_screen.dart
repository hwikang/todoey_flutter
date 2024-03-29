
import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/screen/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
class TaskScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){          
          showModalBottomSheet(
            context:context,
            builder:(context)=>AddTask(),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            padding: EdgeInsets.only(top:60, left:30, right:30,bottom:30),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius:30,
                child:Icon(
                  Icons.list,
                  size: 30.0,
                ), 
              ),
              SizedBox(height: 10,),
              
              Text(
                "todoey",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                )
              ),
              Text(
                "${Provider.of<TaskData>(context).taskCount}Tasks",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),                
              ),              
            ],
          )
         ),
         Expanded(
            child:Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(  //박스데코랑 컬러같이안됨
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20),
                  topRight:Radius.circular(20),                  
                ),
                color: Colors.white,
              ),
              child: TaskList(),             
            )
          ),
        ]        
      )           
    );
  }
}

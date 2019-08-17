import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task.dart';

String inputValue ; 

class AddTask extends StatelessWidget{
  // AddTask({this.addTask});
  // final Function addTask;
  @override
  Widget build(BuildContext context) {
    print("inputValue"); 
    print(inputValue);
    return Container(
      color:Color(0xff757575),
      child:Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child:Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Add Task",
            style:TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 25,
            ),

            
          ),
          TextField(
            autofocus: true,
            onChanged: (value){
            
              inputValue = value;

            } ,
          ),
          FlatButton(
            child:Text(
              "Add"
            ),
            
            color:Colors.lightBlueAccent,
            textColor: Colors.white,
            onPressed: (){
              Provider.of<TaskData>(context).addTask(inputValue);
              

              Navigator.pop(context);
            }
          ),
        ],
      ),
      ),
      
    );
    
  }
  
}


import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
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
                "12Tasks",
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
              decoration: BoxDecoration(  //박스데코랑 컬러같이안됨
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20),
                  topRight:Radius.circular(20),                  
                ),
                color: Colors.white,
              ),
            )
          ),
        ]



        
      )   
        
    );
  }
}
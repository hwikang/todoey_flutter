import 'package:flutter/foundation.dart';
import 'task.dart'; 
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = <Task>[
    Task(name: "buy a milk"),
    Task(name: "buy a bag"),
    Task(name: "drink soju"),    
    Task(name: "chest press 10reps"),
  ];

  int get taskCount{
    return _tasks.length;
  }
  //tasks.add 이런거 못하게함
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  //추가해서 notify해줌
  void addTask(String name){
    Task task = Task(name:name);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
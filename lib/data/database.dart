import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];
  final mybox = Hive.box("myBox");
//run this method if its firstime opening the app
  void createNewData() {
    todoList = [
      ["make tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //run method when loading data from db
  void loadData() {
    todoList = mybox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    mybox.put("TODOLIST", todoList);
  }
}

import 'package:flutter/material.dart';
import 'package:todo/TaskList.dart';
import 'package:todo/screens/addTask.dart';
import 'package:todo/Tasks.dart';
import 'package:provider/provider.dart';
import 'package:todo/taskdata.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => AddTask());
          },
          backgroundColor: Color(0xFF30D5C8),
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF30D5C8),
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ToDoList",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "${Provider.of<taskdata>(context).yeh.length} Tasks left",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 30, right: 80),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: TaskList(),
              ),
            )
          ],
        ));
  }
}

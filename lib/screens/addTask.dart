import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/taskdata.dart';
import 'package:todo/Tasks.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String nyu;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          color: Colors.grey[800],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Color(0xFF30D5C8),
              ),
            ),
            TextField(
              onChanged: (val) {
                nyu = val;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30),
              decoration: InputDecoration(),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Provider.of<taskdata>(context, listen: false).ad(nyu);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Add To List",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xFF30D5C8))),
            )
          ],
        ),
      ),
    );
  }
}

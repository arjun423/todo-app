import 'package:flutter/material.dart';
import 'screens/taskscreen.dart';
import 'screens/addTask.dart';
import 'package:provider/provider.dart';
import 'taskdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => taskdata(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/Tasks.dart';

class taskdata extends ChangeNotifier {
  List<Task> yeh = [
    Task("Go", false),
    Task("Come", false),
    Task("Fuck", false),
  ];
  void ad(String val) {
    yeh.add(Task(val, false));
    notifyListeners();
  }

  void dis(int i) {
    yeh[i].chng();
    notifyListeners();
  }

  void del(int i) {
    yeh.removeAt(i);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(this.isc, this.name, this.fun, this.del);
  final bool isc;
  final String name;
  final fun, del;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: del,
      title: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          decoration: isc ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: check(isc, fun),
    );
  }
}

class check extends StatelessWidget {
  check(this.isc, this.chng);
  final chng;
  final bool isc;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: BorderSide(color: Colors.white),
      activeColor: Color(0xFF30D5C8),
      checkColor: Colors.white,
      value: isc,
      onChanged: chng,
    );
  }
}

import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'Tasks.dart';
import 'package:provider/provider.dart';
import 'package:todo/taskdata.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<taskdata>(context).yeh.length,
        itemBuilder: (context, i) {
          void chng(bool? val) {
            Provider.of<taskdata>(context, listen: false).dis(i);
          }

          void del() {
            Provider.of<taskdata>(context, listen: false).del(i);
          }

          return TaskTile(Provider.of<taskdata>(context).yeh[i].isc,
              Provider.of<taskdata>(context).yeh[i].name, chng, del);
        });
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/BLoc/models/task.dart';

import '../../BLoc/globals.dart';
import './todo-item.dart';

class IntrayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Task> tasksList = [];
    if (tasksList.isEmpty)
      for (int i = 0; i < 10; i++)
        tasksList.add(Task(
          taskId: i.toString(),
          title: 'Task number: ' + i.toString(),
          isCompleted: false,
        ));
    return Container(
      color: kDarkGreyColor,
      child: Theme(
        data: ThemeData(
          canvasColor: Colors.white10,
          shadowColor: Colors.transparent,
        ),
        child: ReorderableListView.builder(
          header: Padding(
              padding: EdgeInsets.only(
                  top: kAppBarHeight + kDefaultMarginFactor * 2)),
          onReorder: (int oldIndex, int newIndex) {
            // print('oldIndex: $oldIndex; newIndex: $newIndex');
            //If moving Item downwards
            if (newIndex > oldIndex) newIndex -= 1;
            Task taskOnMove = tasksList.removeAt(oldIndex);
            tasksList.insert(newIndex, taskOnMove);
          },
          itemCount: tasksList.length,
          itemBuilder: (context, index) => IntrayTodoItem(
            key: Key(tasksList[index].taskId),
            title: tasksList[index].title,
          ),
        ),
      ),
    );
  }
}

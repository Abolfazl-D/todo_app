
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({required this.isChecked,required this.taskTitle, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
      ),
    );
  }
}



// class TaskTile extends StatefulWidget {
//   const TaskTile({Key? key}) : super(key: key);
//
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//
//   void checkboxCallback(bool? checkboxState) {
//     setState(() {
//       isChecked = checkboxState!;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task',
//         style: TextStyle(
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//       trailing: TaskCheckbox(
//           checkboxState: isChecked,
//           toggleCheckboxState : checkboxCallback
//       ),
//     );
//   }
// }
//
// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function(bool?) toggleCheckboxState;
//
//   const TaskCheckbox({Key? key, required this.checkboxState, required this.toggleCheckboxState}): super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.blueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepOrange[300],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
// get user input

          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "add new task",
            ),
          ),

          //buttons  SAVE AND CANCEL
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            //save
            MyButton(text: "Save", onPressed: onSave),
            const SizedBox(width: 8),

            //cancel
            MyButton(text: "Cancel", onPressed: onCancel)
          ]),
        ]),
      ),
    );
  }
}

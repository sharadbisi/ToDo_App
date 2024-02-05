import 'package:flutter/material.dart';
import 'package:todo_list/save_cancel_btn.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.cyan[200],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter New Item',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //cancel button
                MyButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                ),

                const SizedBox(
                  width: 10,
                ),

                //save button
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

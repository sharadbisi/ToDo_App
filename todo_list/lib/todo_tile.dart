import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoList extends StatelessWidget {
  ToDoList(
      {super.key,
      required this.itemName,
      required this.itemCompletion,
      required this.onChanged,
      required this.deleteFunction,
      });

  final String itemName;
  final bool itemCompletion;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: const Color.fromARGB(255, 239, 154, 154),
            borderRadius: BorderRadius.circular(12),
            foregroundColor: const Color.fromARGB(255, 253, 253, 253),
          )
        ]),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              //checkbox
              Checkbox(
                value: itemCompletion,
                onChanged: onChanged,
                activeColor: Colors.greenAccent,
              ),

              //item name
              Text(
                itemName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: itemCompletion
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

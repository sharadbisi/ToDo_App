import 'package:flutter/material.dart';
import 'package:todo_list/dialogBox.dart';
import 'package:todo_list/todo_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //text controller
  final _controller = TextEditingController();

  //LIST OF TODOLIST
  List toDoList = [
    ['Dart', false],
    ['Flutter', false],
    ['NodeJs', true],
  ];

  //checkbox changing
  void checkboxChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  //save new task
  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //create new item
  void createNewItem() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onCancel: () => Navigator.of(context).pop(),
          onSave: saveNewTask,
        );
      },
    );
  }

  //delete item
  void deleteItem(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        // elevation: 0,
        title: const Text(
          'TO DO',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: AutofillHints.addressState,
              fontWeight: FontWeight.bold,
              fontSize: 27,
              ),
        ),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, int index) {
          return ToDoList(
            itemName: toDoList[index][0],
            itemCompletion: toDoList[index][1],
            onChanged: (value) => checkboxChange(value, index),
            deleteFunction: (context) => deleteItem(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewItem,
        backgroundColor: Colors.cyan,
        // shape: CircleBorder(
        //     eccentricity: 2,
        //     side: BorderSide(
        //       width: 1,
        //     )),
        splashColor: Colors.green[300],
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}

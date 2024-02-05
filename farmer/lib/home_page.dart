import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        actions: [

        ],
      ),
      body: const Padding(padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('sharad'),
          Text('Bisi'),
        ],
      ),
      ),

    );
  }
}
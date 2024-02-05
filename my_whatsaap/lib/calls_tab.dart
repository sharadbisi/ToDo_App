import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
      children: [
        Callslog(),
        Callslog(),
        Callslog(),
        Callslog(),
        Callslog(),
        Callslog(),
        Callslog(),
        Callslog(),
        Callslog(),
      ],
    );
  }
}

class Callslog extends StatelessWidget {
  const Callslog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                "https://randomuser.me/api/portraits/women/71.jpg",
                height: 60,
                width: 60,
              )),
          Padding(padding: EdgeInsets.only(left: 12)),
           Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mummy",
                  style: TextStyle(fontSize: 20),
                ),

                Row(children: [
                  IconButton(
                    icon: Icon(Icons.call_made),
                    color: Color.fromARGB(255, 30, 119, 3),
                    iconSize: 17,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                  ),
                  Text(
                    "3 minutes ago",
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 101, 101),
                      fontSize: 14,
                    ),
                  )
                ])
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.call),
            color: Color.fromARGB(255, 30, 119, 3),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

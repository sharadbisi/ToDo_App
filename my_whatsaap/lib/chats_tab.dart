import 'package:flutter/material.dart';
import 'package:my_whatsaap/chats_details.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      children: [
        ChatSummary("Sharad"),
        ChatSummary("Manish"),
        ChatSummary("Suraj"),
        ChatSummary("Subhash"),
        ChatSummary("Spiderman"),
        ChatSummary("Thor"),
        ChatSummary("Ironman"),
        ChatSummary("Thor"),
      ],
    );
  }
}

class ChatSummary extends StatelessWidget {
  const ChatSummary(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetails(name: name),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  "https://randomuser.me/api/portraits/men/71.jpg",
                  height: 60,
                  width: 60,
                )),
            Padding(padding: EdgeInsets.only(left: 12)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Hello World",
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 101, 101),
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            Text(
              "11:20 PM",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}

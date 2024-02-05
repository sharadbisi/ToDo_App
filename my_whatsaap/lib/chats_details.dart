import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({super.key, required String name});

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  var messages = ["hello", "Hii"];

  void sendChat(String message) {}
  void readChat(String message) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        toolbarHeight: 65,
        titleSpacing: 0,
        title: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  "https://randomuser.me/api/portraits/men/71.jpg",
                  height: 50,
                  width: 50,
                )),
            Padding(padding: EdgeInsets.only(left: 10)),
            Column(
              children: [
                Text(
                  "Sharad",

                  // widget.name,
                  style: TextStyle(color: Color(0xffffffff), fontSize: 20),
                ),
                Text(
                  "online",
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.videocam),
              color: Color(0xffffffff),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.call),
              color: Color(0xffffffff),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.more_vert),
              color: Color(0xffffffff),
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      messages[index],
                      style: const TextStyle(
                        color: Colors.white,
                        backgroundColor: Color(0xff075e54),
                      ),
                    ));
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color.fromARGB(255, 218, 215, 215),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.emoji_emotions),
                          hintText: "Messages",
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.currency_rupee_rounded),
                              SizedBox(width: 10),
                              Icon(Icons.camera_alt),
                              SizedBox(width: 15),
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

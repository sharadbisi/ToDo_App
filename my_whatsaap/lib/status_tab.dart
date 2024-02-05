import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal:5, vertical: 12),
      children: [
        Text(
          "Status",
          style: TextStyle(fontSize: 25),
        ),
        MyStatus(),

      Container(
        height: 30,
        width: 30,
        color: Colors.grey,
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 13,vertical: 7),
        child: Text(
          "Recent Updates",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        ),
      ),

        Status(),
        Status(),
        Container(
        height: 30,
        color: Colors.grey,
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 13,vertical: 7),
        child: Text(
          "Viewed Updates",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        ),
      ),
        Status(),
        Status(),
        Status(),
        Status(),
        Status(),
        Status(),
      ],
    );
   
    //  FloatingActionButton(
    //   onPressed: () {},
    //   backgroundColor: Colors.greenAccent[700],
    //   elevation: 5,
    //   child: Icon(Icfontsize.bold,ons.camera_alt),
    //  )
  }
}



class Status extends StatelessWidget {
  const Status();

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
                "https://randomuser.me/api/portraits/men/7.jpg",
                height: 60,
                width: 60,
              )),
          Padding(padding: EdgeInsets.only(left: 12)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sharad",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "20 min ago",
                  style: TextStyle(
                    color: Color.fromARGB(255, 102, 101, 101),
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  "https://randomuser.me/api/portraits/men/9.jpg",
                  height: 60,
                  width: 60,
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 15, 207, 114),
                  radius: 10,
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        title: Text(
          "My Status",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
        ),
        subtitle: Text(
          "Tap to add status update",
          style: TextStyle(
            color: Color.fromARGB(255, 102, 101, 101),
            fontSize: 14,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:my_whatsaap/calls_tab.dart';
import 'package:my_whatsaap/chats_tab.dart';
import 'package:my_whatsaap/status_tab.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  final List<Tab> topTab = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  void initState() {
    tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: const Text(
            "WhatsApp",
            style: TextStyle(color: Color(0xffffffff)),
          ),
          // titleTextStyle:TextStyle(color: Color.fromARGB(255, 235, 245, 244)),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                color: Color(0xffffffff),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.more_vert),
                color: Color(0xffffffff),
                onPressed: () {}),
          ],
          bottom: TabBar(
            unselectedLabelColor: Color(0xffffffff),
            indicatorColor: Color(0xffffffff),
            labelColor: Color(0xffffffff),
            controller: tabController,
            tabs: topTab,
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Text("camera"),
            ChatPage(),
            StatusPage(),
            CallsPage(),
          ],
        )
      );
  }
}

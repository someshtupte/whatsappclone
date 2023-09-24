import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/ChatListElement.dart';
import 'package:whatsappclone/widgets/calls.dart';
import 'package:whatsappclone/widgets/mystatus.dart';
import 'package:whatsappclone/Screens/SearchScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> with TickerProviderStateMixin {
  late final TabController tC;

  @override
  void initState() {
    super.initState();
    tC = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
              icon: Icon(Icons.search)),
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(controller: tC, tabs: const <Widget>[
          Tab(
            icon: Icon(Icons.groups),
          ),
          Tab(
            text: "Chats",
          ),
          Tab(
            text: "Status",
          ),
          Tab(text: "Calls"),
        ]),
      ),
      body: TabBarView(
        controller: tC,
        children: <Widget>[
          ListView(
            children: [
              Text("Group 1"),
              Text("Group 1"),
              Text("Group 1"),
              Text("Group 1"),
              Text("Group 1"),
              Text("Group 1"),
              Text("Group 1"),
              Text("Group 1"),
              Text("Group 1"),
              Text("Group 1"),
            ],
          ),
          ListView.separated(
              itemCount: 9,
              itemBuilder: (context, index) {
                return ChatListElement(index: index);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider()),
          Center(
            child: MyStatus(),
          ),
          Center(
            child: MyListView(),
          ),
        ],
      ),
    );
  }
}

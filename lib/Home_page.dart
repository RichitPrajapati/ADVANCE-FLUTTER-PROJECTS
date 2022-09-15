import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Calls_Page.dart';
import 'package:whatsapp_clone/Chats_page.dart';
import 'package:whatsapp_clone/Global.dart';
import 'package:whatsapp_clone/IosCall_Page.dart';
import 'package:whatsapp_clone/IosChats_Page.dart';
import 'package:whatsapp_clone/IosSetting_Page.dart';
import 'package:whatsapp_clone/IosStatus_Page.dart';
import 'package:whatsapp_clone/Status_Page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  final List<Widget> ios_tabs = [
    const IosStatusPage(),
    const IosCallsPage(),
    const IosChatsPage(),
    const IosSettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return (Global.isIos == false)
        ? MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green.shade700,
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor:Colors.green.shade700,
          bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.green.shade700,
            indicatorWeight: 3,
            tabs: const [
              Tab(text: "CHATS"),
              Tab(text: "STATUS "),
              Tab(text: "CALLS"),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Switch(
                activeColor: const Color(0xff239a7e),
                value: Global.isIos,
                onChanged: (val) {
                  setState(() {
                    Global.isIos = val;
                  });
                },
              ),
            ),
          ],
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            ChatsPage(),
            StatusPage(),
            CallsPage(),
          ],
        ),
      ),
    )
        : CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.rectangle_stack_person_crop),
                  label: 'Status'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.phone), label: 'Calls'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_2),
                  label: 'Chats'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings), label: 'Settings'),
            ],
          ),
          tabBuilder: (BuildContext context, index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return ios_tabs[index];
              },
            );
          },
        ),
      ),
    );
  }
}
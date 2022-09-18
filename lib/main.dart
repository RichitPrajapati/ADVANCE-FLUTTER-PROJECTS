import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_app/App_Page.dart';
import 'package:playstore_app/Game_Page.dart';
import 'package:playstore_app/Global.dart';
import 'package:playstore_app/Home_Page.dart';
import 'package:playstore_app/Install_Page.dart';
import 'package:playstore_app/Ios_Page.dart';

void main() {
  runApp(
    MyPlayStore(),
  );
}

class MyPlayStore extends StatefulWidget {
  const MyPlayStore({Key? key}) : super(key: key);

  @override
  State<MyPlayStore> createState() => _MyPlayStoreState();
}

class _MyPlayStoreState extends State<MyPlayStore> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS)
        ? CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => IosPage(),
        'game_page': (context) => GamePage(),
        'app_page': (context) => AppPage(),
        'updates': (context) => Updates(),
        'search': (context) => Search(),
      },
    )
        : MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "install_page": (context) => const InstallPage(),
      },
    );
  }
}
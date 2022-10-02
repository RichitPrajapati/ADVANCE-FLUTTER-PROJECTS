import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/Home_Page.dart';
import 'package:videoplayer/Video_Screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'HomePage',
    routes: {
      'HomePage': (context) => const HomePage(),
      'VideoScreenPage': (context) => const VideoScreenPage(),
    },
  ));
}

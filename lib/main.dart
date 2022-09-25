import 'package:flutter/material.dart';
import 'package:ott_platforms_project/Home_Page.dart';
import 'package:ott_platforms_project/Website_Page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "website_page": (context) => const WebsitePage(),
      },
    ),
  );
}

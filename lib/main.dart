import 'dart:io';
import 'package:educational_websites_project/Home_Page.dart';
import 'package:educational_websites_project/Wbesite_Page.dart';
import 'package:flutter/material.dart';

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

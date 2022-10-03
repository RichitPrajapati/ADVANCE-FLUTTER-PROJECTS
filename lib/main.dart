import 'package:flutter/material.dart';
import 'package:permission_app/Home_Page.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

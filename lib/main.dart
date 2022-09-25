import 'package:flutter/material.dart';
import 'package:random_data_api/Home_Page.dart';
import 'package:random_data_api/RandomData.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:stepper_example/Home_Page.dart';
import 'package:stepper_example/Splash_Page.dart';



void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: 'homepage',
      routes: {
        'splashscreen': (context) => SplashScreen(),
        'homepage': (context) => HomePage(),
      },
    ),
  );
}
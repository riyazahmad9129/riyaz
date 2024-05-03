import 'package:flutter/material.dart';
import 'package:untitled/components/image_con.dart';
import 'package:untitled/destination.dart';
import 'package:untitled/flight_screen.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/introScreen.dart';
import 'package:untitled/notification.dart';
import 'package:untitled/sample.dart';
import 'package:untitled/test.dart';

import 'flight2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),);
  }
}



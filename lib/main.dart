import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/api.dart';
import 'package:untitled/components/destination.dart';
import 'package:untitled/components/image_con.dart';
import 'package:untitled/date.dart';
import 'package:untitled/destination.dart';
import 'package:untitled/flight_screen.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/introScreen.dart';
import 'package:untitled/notification.dart';
import 'package:untitled/sampl.dart';
import 'package:untitled/sample.dart';
import 'package:untitled/saple.dart';
import 'package:untitled/test.dart';
import 'package:untitled/test2.dart';

import 'flight2.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

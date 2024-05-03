import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive App', style: TextStyle(fontSize: 20.sp)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterLogo(
                size: 100,
              ),  FlutterLogo(
                size: 100,
              ),  FlutterLogo(
                size: 100,
              ),

            ],
          ),
          Container(
            width: 200.w, // Set width to 100 logical pixels scaled by screen size
            height: 100.h, // Set height to 100 logical pixels scaled by screen size
            color: Colors.red,
            child: Center(
              child: Text('Hello', style: TextStyle(fontSize: 16.sp)), // Set font size scaled by screen size
            ),
          ),
          SizedBox(height: 20.h), // Set spacing scaled by screen size
          Text('ScreenUtil Demo', style: TextStyle(fontSize: 24.sp)),
        ],
      ),
    );
  }
}

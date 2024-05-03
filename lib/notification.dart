import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4093ce),
        toolbarHeight: 30,
        leading: GestureDetector(onTap: () {
          Navigator.pop(context);
        },child: const Icon(CupertinoIcons.back,color: Colors.white,size: 30)),
        title: const Text("Notification",style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25
        )),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: const Center(
          child: Text("no notification",style: TextStyle(
            fontSize: 25
          )),
        ),
      ),
    );
  }
}

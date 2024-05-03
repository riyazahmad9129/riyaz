import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/destination.dart';
import 'package:untitled/components/image_con.dart';

import 'components/gap.dart';

class YourDestination extends StatefulWidget {
  const YourDestination({super.key});

  @override
  State<YourDestination> createState() => _YourDestinationState();
}

class _YourDestinationState extends State<YourDestination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Destination",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child:
                const Icon(CupertinoIcons.back, size: 30, color: Colors.white)),
        toolbarHeight: 45,
        backgroundColor: const Color(0xFF4093ce),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.blue.shade300,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Gap(
                horizontal: 20,
              ),
              VisitArea2(
                image: "lib/assets/visit.jpg",
                text1: "France",
                text: "Paris,",
              ),
              Gap(vertical: 30),
              VisitArea2(
                image: "lib/assets/visit1.jpg",
                text: "Istanbul,",
                text1: "Turkey",
              ),
              Gap(vertical: 30),
              VisitArea2(
                image: "lib/assets/visit2.jpg",
                text: "Rome,",
                text1: "Italy",
              ),
              Gap(vertical: 30),
              VisitArea2(
                image: "lib/assets/visit3.jpeg",
                text: "San Francisco,",
                text1: "California",
              ),
              Gap(
                vertical: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

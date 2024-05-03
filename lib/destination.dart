import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return  Scaffold(
      appBar: AppBar(
        title: const Text("All Destination",style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600,color: Colors.white
        ),),
        leading: GestureDetector(
            onTap:() {
              Navigator.pop(context);
            },
            child: const Icon(CupertinoIcons.back,size: 30,color: Colors.white)),
        toolbarHeight: 45,
        backgroundColor: const Color(0xFF4093ce),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.grey.shade200,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                children: [
                  VisitArea(
                    image: "lib/assets/home2.png",
                    text: "Rome",
                    text1: "Italy",
                  ),
                  Gap(horizontal: 20,),
                  VisitArea(
                    image: "lib/assets/home1.png",
                    text: "Paris",
                    text1: "France",
                  ),
                  Gap(horizontal: 20,),
                  VisitArea(
                    image: "lib/assets/home3.png",
                    text: "Istanbul",
                    text1: "Turkey",
                  ),
                  Gap(horizontal: 10,vertical: 20),
                  VisitArea(
                    image: "lib/assets/home3.png",
                    text: "Istanbul",
                    text1: "Turkey",
                  ),
                  Gap(horizontal: 20,),
                  VisitArea(
                    image: "lib/assets/home2.png",
                    text: "Rome",
                    text1: "Italy",
                  ),
                  Gap(horizontal: 20,),
                  VisitArea(
                    image: "lib/assets/home1.png",
                    text: "Paris",
                    text1: "France",
                  ), VisitArea(
                    image: "lib/assets/home2.png",
                    text: "Rome",
                    text1: "Italy",
                  ),
                  Gap(horizontal: 20,),
                  VisitArea(
                    image: "lib/assets/home1.png",
                    text: "Paris",
                    text1: "France",
                  ),
                  Gap(horizontal: 20,),
                  VisitArea(
                    image: "lib/assets/home3.png",
                    text: "Istanbul",
                    text1: "Turkey",
                  ),
                  Gap(horizontal: 10,vertical: 20),
                  VisitArea(
                    image: "lib/assets/home3.png",
                    text: "Istanbul",
                    text1: "Turkey",
                  ),
                  Gap(horizontal: 20,),
                  VisitArea(
                    image: "lib/assets/home2.png",
                    text: "Rome",
                    text1: "Italy",
                  ),
                  Gap(horizontal: 20,),
                  VisitArea(
                    image: "lib/assets/home1.png",
                    text: "Paris",
                    text1: "France",
                  ),
                ],
              ),
              Gap(vertical: 100,)
            ],
          ),
        ),
      ),
    );
  }
}

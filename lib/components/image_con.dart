import 'package:flutter/material.dart';
import 'package:untitled/components/gap.dart';

class VisitArea extends StatelessWidget {
  final String? image;
  final String? text;
  final String? text1;
  const VisitArea({super.key, this.image, this.text, this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Container(
          height: 200,
          width: 110,

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
             Gap(horizontal: 0.10,),
              Image.asset( image ??"",scale: 0.9,),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 50,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text ??""),
                    Text(text1??"",style: TextStyle(
                      color: Colors.grey
                    ),),

                  ],
                ),
              )
            ],
          ),

              ),
        );
  }
}

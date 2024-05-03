import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:untitled/components/gap.dart';
import 'package:untitled/components/textformfield.dart';
import 'package:untitled/flight2.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const Gap(vertical: 190),
                  ClipPath(
                    clipper: WaveClipperTwo(reverse: true,flip: true),
                    child: Container(
                      height: 676,
                      width: 425,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFF4093ce),Color(0xFF92c8ef),],
                              begin: Alignment.topCenter,end: Alignment.bottomCenter),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(vertical:  90,),
                            const Text("Book your flight",style: TextStyle(
                                color: Colors.white,fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),),
                            const Gap(vertical:  20,),
                            Container(
                              height: 60,
                              width: 510,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white70

                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color:const Color(0xFF2f7694 ),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: const Center(child: Text("One way",style: TextStyle(
                                      fontSize: 20,color: Colors.white70,fontWeight: FontWeight.w600
                                    ),)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context) => Booking2Screen(),));
                                    },
                                    child: Container(
                                      height: 60,
                                      width: 170,
                                      decoration: const BoxDecoration(
                                          color:Colors.white70,
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                                      ),
                                      child:  const Center(child: Text("Round Trip",style: TextStyle(
                                          fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w600
                                      ),),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Gap(vertical: 25,),
                            Container(
                              height: 370,
                              width: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("FROM",style: TextStyle(
                                          fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500
                                      ),),
                                      const MyTextField(
                                        hintText: "Abinaca (ABC)",
                                      ),
                                      const Gap(vertical: 10,),
                                      const Text("To",style: TextStyle(
                                          fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500
                                      ),),
                                      const MyTextField(
                                        hintText: "Abinaca (ABC)",
                                      ),
                                      const Gap(vertical: 10,),
                                      const Text("Date",style: TextStyle(
                                          fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500
                                      ),),
                                      const MyTextField(
                                        hintText: "1 May, 4:45 PM",
                                      ),
                                      const Gap(vertical: 25,),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 320,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFF2f7694),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child:  const Center(
                                            child: Text("View flight",style: TextStyle(
                                                color: Colors.white,fontSize: 20,
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 36,
                  top: 20,
                  child: Image.asset("lib/assets/flight.png"))
            ],
          ),
        ),
      )

    );
  }
}

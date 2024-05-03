import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:untitled/components/gap.dart';
import 'package:untitled/components/textformfield.dart';
import 'package:untitled/flight_screen.dart';

class Booking2Screen extends StatefulWidget {
  const Booking2Screen({super.key});

  @override
  State<Booking2Screen> createState() => _Booking2ScreenState();
}

class _Booking2ScreenState extends State<Booking2Screen> {
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
                              const Gap(vertical:  55,),
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
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingScreen(),));
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 160,
                                        decoration: const BoxDecoration(
                                            color:Colors.white70,
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
            
            
                                        ),
                                        child: const Center(child: Text("One way",style: TextStyle(
                                            fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w600
                                        ),)),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      width: 191,
                                      decoration: BoxDecoration(
                                          color:const Color(0xFF2f7694 ),
                                          borderRadius: BorderRadius.circular(10)
            
                                      ),
                                      child:  const Center(child: Text("Round Trip",style: TextStyle(
                                          fontSize: 20,color: Colors.white70,fontWeight: FontWeight.w600
                                      ),),),
                                    )
                                  ],
                                ),
                              ),
                              const Gap(vertical: 15,),
                              Container(
                                height: 420,
                                width: 500,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("FROM",style: TextStyle(
                                            fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500
                                        ),),
                                        const MyTextField(
                                          hintText: "Abianca (ABC)",
                                        ),
                                        const Gap(vertical: 10,),
                                        const Text("To",style: TextStyle(
                                            fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500
                                        ),),
                                        const MyTextField(
                                          hintText: "Abianca (ABC)",
                                        ),
                                        const Gap(vertical: 10,),
                                        const Text("Date",style: TextStyle(
                                            fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500
                                        ),),
                                        const MyTextField(
                                          hintText: "1 May, 4:45 PM",
                                        ),
                                        const Gap(vertical: 10,),
                                        const Text("Return Date",style: TextStyle(
                                            fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500
                                        ),),
                                        const MyTextField(
                                          hintText: "12 May, 6:45 PM",
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

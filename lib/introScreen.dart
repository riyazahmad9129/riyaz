import 'package:flutter/material.dart';
import 'package:untitled/home_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,

        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF4093ce),Color(0xFF92c8ef),],
          begin: Alignment.topCenter,end: Alignment.bottomCenter)
        ),
        child: Column(
          children: [
            const SizedBox(height: 90,),
            Container(
              width: 320,
              height: 320,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(190),
                color: Colors.white,
                image: const DecorationImage(image: AssetImage("lib/assets/intro.png"))
              ),
            ),
            const SizedBox(height: 75,),
            const Text("Let's Enjoy A",style: TextStyle(
              color: Colors.white,fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
            const Text("New World",style: TextStyle(
              color: Colors.white,fontSize: 39,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 75,),
            const Text("Search the safest destination",
            style: TextStyle(
              fontSize: 16,fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 40,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: const Color(0xFF2f7694),
                  borderRadius: BorderRadius.circular(20)
                ),
                child:  const Center(
                  child: Text("Get Started",style: TextStyle(
                      color: Colors.white,fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

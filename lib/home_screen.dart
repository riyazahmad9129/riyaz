import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/gap.dart';
import 'package:untitled/components/image_con.dart';
import 'package:untitled/destination.dart';
import 'package:untitled/notification.dart';

import 'components/customsearch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchValue = '';
  final List<String> _suggestions = ['Afeganistan', 'Albania', 'Algeria', 'Australia', 'Brazil', 'German', 'Madagascar', 'Mozambique', 'Portugal', 'Zambia'];
  final datetime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.only(left: 20,right: 10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFF4093ce),Color(0xFF92c8ef),],
                begin: Alignment.topCenter,end: Alignment.bottomCenter)
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Card(child: FlutterLogo(size: 35,)),
                  const Gap(vertical: 10,),
                  const Text("Hi Riyaz!",style: TextStyle(
                      color: Colors.white,fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  const Gap(horizontal: 185,),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen(),));
                    },
                    child: Container(
                      height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70
                        ),
                        child: const Icon(Icons.notifications,color: Colors.white,size: 28,)),
                  )
                ],
              ),
               const Gap(vertical: 30,),
              const Text("Where you want to",style: TextStyle(
                  color: Colors.white,fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
              const Text("go?",style: TextStyle(
                  color: Colors.white,fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
              // const Gap(vertical: 20,),
              // EasySearchBar(title: Text("data"),  onSearch: (value) => setState(() => searchValue = value),
              //     suggestions: _suggestions),
              const Gap(vertical: 20,),
              TextFormField(
                readOnly: true,
                onTap: () {
                  showSearch(context: context, delegate: Search());
                },


                decoration: InputDecoration(
                  hintText: "Search a flight",hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search,color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,

                    borderRadius: BorderRadius.circular(10),

                  ),
                  filled: true,
                  fillColor: Colors.white
                ),
              ),

              const Gap(vertical: 30,),
              const Text("Upcoming Trips",style: TextStyle(
                  color: Colors.white,fontSize: 22,
                  fontWeight: FontWeight.w700
              ),),
              const Gap(vertical: 10,),
              Container(
                height: 195,
               width: 360,

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF2f7694),
                  shape: BoxShape.rectangle,

              ),

                child:  Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: [

                      const Row(
                        children: [
                           Text("10 May, 12:30 AM",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                          Gap(horizontal: 75,),
                          Text("11 May, 8:30 AM",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                        ],
                      ),
                      const Gap(vertical: 20,),
                      Row(
                        children: [
                          const Text("ABC",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 25),),
                          const Gap(horizontal: 42,),
                          Image.asset("lib/assets/dot.png"),
                          const Gap(horizontal: 15,),
                           const Icon(CupertinoIcons.airplane,color: Colors.white30),
                          const Gap(horizontal: 15,),
                          Image.asset("lib/assets/dot.png"),
                          const Gap(horizontal: 50,),
                          const Text("XYZ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 25),),
                        ],
                      ),
                      const Gap(vertical: 30,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 125,
                            decoration: BoxDecoration(
                              color: const Color(0XFFe8eff3),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text("Abianca,Sodaium",
                              style: TextStyle(
                                color: Color(0xFF528aad),
                                fontWeight: FontWeight.w600
                              )
                              ),
                            ),
                          ),
                          const Gap(horizontal:  50,),
                          Container(
                            height: 30,
                            width: 125,
                            decoration: BoxDecoration(
                              color: const Color(0XFFe8eff3),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text("Xyzaira,Filanto",
                                  style: TextStyle(
                                      color: Color(0xFF528aad),
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(vertical: 30,),
              Row(
                children: [
                  const Text("Popular Destination",style: TextStyle(
                      color: Colors.white,fontSize: 22,
                      fontWeight: FontWeight.w700
                  ),),

                  const Gap(horizontal: 80,),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const YourDestination(),));

                  },
                    child: const Text("View All",style: TextStyle(
                                          color: Colors.white, fontSize: 15
                                        ),
                      ),
                  ),

                ],
              ),


           const Wrap(
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
               ),
               Gap(vertical: 50,)


             ],
           )
            ],
          ),
        ),

      ),
      bottomNavigationBar: Container(
        height: 55,
        width: 800,
        color: Colors.white70,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(horizontal: 30,),
            Icon(Icons.home,size: 30),
            Gap(horizontal: 140,),
            Icon(Icons.location_on_outlined,size: 30),
            Gap(horizontal: 130,),
            Icon(Icons.favorite_border,size: 30,)
          ],
        ),
      ),
    );
  }
}



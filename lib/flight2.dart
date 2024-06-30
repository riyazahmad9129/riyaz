import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/components/gap.dart';
import 'package:untitled/components/textformfield.dart';
import 'package:untitled/flight_screen.dart';

class Booking2Screen extends StatefulWidget {
  const Booking2Screen({super.key});

  @override
  State<Booking2Screen> createState() => _Booking2ScreenState();
}

class _Booking2ScreenState extends State<Booking2Screen> {
  DateTime? selectedDate;
  DateTime? selected2Date;

  final GlobalKey<FormState> _formKey = GlobalKey();

  get data => '';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2024, 5),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selected2Date ?? DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selected2Date) {
      setState(() {
        selected2Date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Gap(vertical: 180.h),
                  ClipPath(
                    clipper: WaveClipperTwo(reverse: true, flip: true),
                    child: Container(
                      height: 800.h,
                      width: 450.w,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF4093ce),
                            Color(0xFF92c8ef),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30.w),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(vertical: 50.h),
                              const Text(
                                "Book your flight",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Gap(vertical: 10.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Container(
                                  width: 430.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 50.h,
                                          width: 125.w,
                                          decoration: const BoxDecoration(
                                            color: Colors.white70,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "One way",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50.h,
                                        width: 155.w,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF2f7694),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Round Trip",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Gap(vertical: 20.h),
                              Container(
                                height: 360.h,
                                width: 500.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.w),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "FROM",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        MyTextField(
                                          hintText: "Abianca (ABC)",
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return "This field is required";
                                            }
                                          },
                                        ),
                                        Gap(vertical: 10.h),
                                        const Text(
                                          "To",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        MyTextField(
                                          hintText: "Abianca (ABC)",
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return "This field is required";
                                            }
                                          },
                                        ),
                                        Gap(vertical: 10.h),
                                        const Text(
                                          "Date",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _selectDate(context);
                                          },
                                          child: Container(
                                            width: 305.w,
                                            height: 42.h,
                                            padding: EdgeInsets.all(15.w),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFe0edf6),
                                              borderRadius: BorderRadius.circular(8.r),
                                            ),
                                            child: Text(
                                              selectedDate == null
                                                  ? "Select a date"
                                                  : "${selectedDate!.toLocal()}"
                                                  .split(' ')[0],
                                            ),
                                          ),
                                        ),
                                        Gap(vertical: 10.h),
                                        const Text(
                                          "Return Date",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _selectDate2(context);
                                          },
                                          child: Container(
                                            width: 305.w,
                                            height: 42.h,
                                            padding: EdgeInsets.all(15.w),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFe0edf6),
                                              borderRadius: BorderRadius.circular(8.r),
                                            ),
                                            child: Text(
                                              selected2Date == null
                                                  ? "Select a date"
                                                  : "${selected2Date!.toLocal()}"
                                                  .split(' ')[0],
                                            ),
                                          ),
                                        ),
                                        Gap(vertical: 25.h),
                                        GestureDetector(
                                          onTap: () {
                                            if (!_formKey.currentState!.validate()) {
                                              return;
                                            }
                                            // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                                          },
                                          child: Container(
                                            height: 40.h,
                                            width: 320.w,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF2f7694),
                                              borderRadius: BorderRadius.circular(10.r),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "View flight",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 55.w,
                top: 20.h,
                child: Image.asset(
                  "lib/assets/flight.png",scale:0.9 ,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

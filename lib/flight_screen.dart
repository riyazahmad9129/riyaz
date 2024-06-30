import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/components/gap.dart';
import 'package:untitled/components/textformfield.dart';
import 'package:untitled/flight2.dart';
import 'home_screen.dart';

class BookingScreen extends StatefulWidget {
  final String searchText;

  const BookingScreen({Key? key, required this.searchText}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  late TextEditingController _textEditingController;
  DateTime? selectedDate;
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(text: widget.searchText);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024, 4),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  String? _validateDate(DateTime? value) {
    if (value == null) {
      return 'Please select a date';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
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
                              Gap(vertical: 15.h),
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
                                      Container(
                                        height: 50.h,
                                        width: 150.w,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF2f7694),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "One way",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Booking2Screen(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          height: 50.h,
                                          width: 120.w,
                                          decoration: const BoxDecoration(
                                            color: Colors.white70,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "Round Trip",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600,
                                              ),
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
                                height: 300.h,
                                width: 500.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.w),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                          controller: _textEditingController,
                                          hintText: "Abinaca (ABC)",
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "This field is required";
                                            }
                                            return null;
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
                                          hintText: "Abinaca (ABC)",
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "This field is required";
                                            }
                                            return null;
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
                                            height: 40.h,
                                            padding: EdgeInsets.all(15.w),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFe0edf6),
                                              borderRadius:
                                              BorderRadius.circular(8.r),
                                            ),
                                            child: Text(
                                              selectedDate == null
                                                  ? "Select a date"
                                                  : "${selectedDate!.toLocal()}"
                                                  .split(' ')[0],
                                              style: TextStyle(
                                                color: selectedDate == null
                                                    ? Colors.black
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Gap(vertical: 25.h),
                                        GestureDetector(
                                          onTap: () {
                                            if (!_formKey.currentState!
                                                .validate()) {
                                              return;
                                            }
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: 40.h,
                                            width: 320.w,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF2f7694),
                                              borderRadius:
                                              BorderRadius.circular(10.r),
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
                left: 50.w,
                top: 20.h,
                child: Image.asset(
                  "lib/assets/flight.png",
                 scale: 0.9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

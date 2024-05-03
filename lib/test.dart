import 'package:flutter/material.dart';
import 'package:untitled/components/customsearch.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          color: Colors.amber,
          child: Column(
            children: [
              Text(DateTime.now().toString()),


            ],
          ),
        )
      ),
    );
  }
}

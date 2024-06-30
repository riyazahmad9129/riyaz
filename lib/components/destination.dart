import 'package:flutter/material.dart';

import 'gap.dart';

class VisitArea2 extends StatelessWidget {
  final String? image;
  final String? text;
  final String? text1;
  const VisitArea2({super.key, this.image, this.text, this.text1});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Using MediaQuery to get screen width and height
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        // Calculate dynamic height and width based on screen size
        final containerHeight = screenHeight * 0.32; // 35% of screen height
        final containerWidth = screenWidth * 0.9; // 90% of screen width

        return Container(
          height: containerHeight,
          width: containerWidth,
          padding: const EdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            image: DecorationImage(
              image: AssetImage(image ?? ""),
              alignment: Alignment.topCenter,
              // fit: BoxFit.cover, // Adjust image to cover the container
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(
                        horizontal: containerWidth * 0.14, // 14% of container width
                      ),
                      Text(
                        text ?? "",
                        style: TextStyle(
                          fontSize: containerWidth * 0.06, // Adjust font size dynamically
                        ),
                      ),
                      Gap(
                        horizontal: containerWidth * 0.0057, // 0.57% of container width
                      ),
                      Text(
                        text1 ?? "",
                        style: TextStyle(
                          fontSize: containerWidth * 0.05, // Adjust font size dynamically
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

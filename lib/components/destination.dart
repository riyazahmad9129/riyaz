import 'package:flutter/material.dart';

import 'gap.dart';

class VisitArea2 extends StatelessWidget {
  final String? image;
  final String? text;
  final String? text1;
  const VisitArea2({super.key, this.image, this.text, this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 272,
      width: 350,
      padding: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          image: DecorationImage(
              image: AssetImage(image ?? ""), alignment: Alignment.topCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Gap(
                    horizontal: 50,
                  ),
                  Text(text ?? "", style: const TextStyle(fontSize: 22)),
                  const Gap(
                    horizontal: 2,
                  ),
                  Text(
                    text1 ?? "",
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

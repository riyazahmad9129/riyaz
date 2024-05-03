import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double? horizontal;
  final double? vertical;
  const Gap({super.key, this.horizontal, this.vertical});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical ?? 12,
      width: horizontal ?? 12,
    );
  }
}

import 'package:dashboard/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class AllDots extends StatelessWidget {
  const AllDots({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDotIndicator(isActive: index == currentIndex),
        ),
      ),
    );
  }
}

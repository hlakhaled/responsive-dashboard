import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    this.paddingValue = 20,
  });
  final Widget child;
  final double paddingValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingValue),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: child,
    );
  }
}

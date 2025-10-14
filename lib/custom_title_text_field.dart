import 'package:dashboard/custom_text_field.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16),

        CustomTextField(hintText: hintText),
      ],
    );
  }
}

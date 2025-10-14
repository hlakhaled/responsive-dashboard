
import 'package:dashboard/custom_title_text_field.dart';
import 'package:flutter/material.dart';

class InvoicesTextForm extends StatelessWidget {
  const InvoicesTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: "Invoice number",
                hintText: "Type invoice number",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitleTextField(
                title: "Customer Email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: "Invoice number",
                hintText: "Type invoice number",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitleTextField(
                title: "Customer Email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
      ],
    );
  }
}

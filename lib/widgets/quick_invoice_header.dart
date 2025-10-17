import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoices', style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Icon(Icons.add, color: Colors.lightBlue, size: 24),
      ],
    );
  }
}

import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/invoice_list.dart';
import 'package:flutter/material.dart';


class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transactions', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 24),
       InvoiceList()
      ],
    );
  }
}

import 'package:dashboard/widgets/custom_container.dart';
import 'package:dashboard/widgets/latest_transaction.dart';
import 'package:dashboard/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoices extends StatelessWidget {
  const QuickInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 28),
          LatestTransaction(),
        ],
      ),
    );
  }
}

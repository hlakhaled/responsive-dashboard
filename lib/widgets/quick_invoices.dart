import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/custom_button.dart';
import 'package:dashboard/widgets/custom_container.dart';
import 'package:dashboard/widgets/invoices_text_form.dart';
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
          SizedBox(height: 10),
          LatestTransaction(),

          Divider(color: AppColors.grayBackground, height: 18),
          InvoicesTextForm(),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: "Add more details",
                  buttonColor: AppColors.white,
                  textColor: AppColors.lightBlue,
                ),
              ),
              SizedBox(width: 24),
              Expanded(child: CustomButton(text: "Send Money")),
            ],
          ),
        ],
      ),
    );
  }
}

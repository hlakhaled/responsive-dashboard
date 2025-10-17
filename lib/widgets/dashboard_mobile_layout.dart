import 'package:dashboard/widgets/all_expenses.dart';
import 'package:dashboard/widgets/card_section.dart';
import 'package:dashboard/widgets/income_section.dart';
import 'package:dashboard/widgets/quick_invoices.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 8),
          QuickInvoices(),
          SizedBox(height: 8),
          CardSection(),
          SizedBox(height: 8),
          IncomeSection(),
        ],
      ),
    );
  }
}

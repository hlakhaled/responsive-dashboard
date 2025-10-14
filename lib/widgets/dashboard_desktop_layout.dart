import 'package:dashboard/widgets/all_expenses.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/quick_invoices.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          child: Column(
            children: [AllExpenses(), SizedBox(height: 8), QuickInvoices()],
          ),
        ),
      ],
    );
  }
}

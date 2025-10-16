import 'package:dashboard/widgets/custom_pie_chart.dart';
import 'package:dashboard/widgets/income_list.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomPieChart()),

        Expanded(child: IncomeList()),
      ],
    );
  }
}

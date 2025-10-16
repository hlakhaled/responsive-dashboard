import 'package:dashboard/widgets/all_expanseses_header.dart';
import 'package:dashboard/widgets/custom_container.dart';
import 'package:dashboard/widgets/income_details.dart';

import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          AllExpansesesHeader(title: "Income"),

          IncomeDetails(),
        ],
      ),
    );
  }
}

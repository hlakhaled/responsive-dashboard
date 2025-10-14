import 'package:dashboard/widgets/all_expanseses_header.dart';
import 'package:dashboard/widgets/custom_container.dart';

import 'package:dashboard/widgets/expanses_list.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [AllExpansesesHeader(), SizedBox(height: 8), ExpansesList()],
      ),
    );
  }
}

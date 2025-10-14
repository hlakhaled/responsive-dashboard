
import 'package:dashboard/widgets/all_expanseses_header.dart';

import 'package:dashboard/widgets/expanses_list.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          AllExpansesesHeader(),
          SizedBox(height: 24),
          ExpansesList(),
        ],
      ),
    );
  }
}

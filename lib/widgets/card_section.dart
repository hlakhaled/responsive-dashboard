import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/all_dots.dart';
import 'package:dashboard/widgets/card_page_view.dart';
import 'package:dashboard/widgets/custom_container.dart';
import 'package:dashboard/widgets/transaction_header.dart';

import 'package:dashboard/widgets/transaction_list_view.dart';
import 'package:flutter/material.dart';

class CardSection extends StatefulWidget {
  const CardSection({super.key});

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  int currentIndex = 0;
  late PageController controller;
  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      currentIndex = controller.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Card', style: AppStyles.styleSemiBold20(context)),
          SizedBox(height: 18),
          CardPageView(controller: controller),
          SizedBox(height: 18),
          AllDots(currentIndex: currentIndex),
          SizedBox(height: 4),
          TransactionHeader(),
          TransactionListView(),
        ],
      ),
    );
  }
}

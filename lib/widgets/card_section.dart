import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/all_dots.dart';
import 'package:dashboard/widgets/card_page_view.dart';
import 'package:dashboard/widgets/custom_container.dart';
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
          Text('My Card', style: AppStyles.styleSemiBold20),
          SizedBox(height: 4),
          CardPageView(controller: controller),
          SizedBox(height: 16),
          AllDots(currentIndex: currentIndex),
        ],
      ),
    );
  }
}

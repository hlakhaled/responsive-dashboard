import 'package:dashboard/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      controller: controller,
      itemBuilder: (context, index) => MyCard(),
    );
  }
}

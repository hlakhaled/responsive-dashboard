import 'package:dashboard/models/income_item_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/income_item.dart';
import 'package:flutter/material.dart';

class IncomeList extends StatelessWidget {
  const IncomeList({super.key});
  final List<IncomeItemModel> income = const [
    IncomeItemModel(
      title: "Design service",
      amount: "40%",
      color: AppColors.blueAccent,
    ),
    IncomeItemModel(
      title: "Design product",
      amount: "25%",
      color: AppColors.lightBlue,
    ),
    IncomeItemModel(
      title: "Product royalti",
      amount: "20%",
      color: AppColors.primaryBlue,
    ),
    IncomeItemModel(title: "Other", amount: "22%", color: AppColors.beige),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(4, (index) {
        return IncomeItem(incomeItemModel: income[index]);
      }),
    );
  }
}

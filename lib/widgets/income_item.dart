import 'package:dashboard/models/income_item_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItemModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(incomeItemModel.title, style: AppStyles.styleMedium16),
      trailing: Text(
        incomeItemModel.amount,
        style: AppStyles.styleMedium16.copyWith(color: AppColors.blueAccent),
      ),
    );
  }
}

import 'package:dashboard/models/transaction_item_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionItemModel,
    this.isActive = false,
  });
  final TransactionItemModel transactionItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.lightGray,
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionItemModel.subtitle,
          style: AppStyles.styleRegular16(context).copyWith(color: AppColors.mediumGray),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: isActive ? AppColors.green : AppColors.orange,
          ),
        ),
      ),
    );
  }
}

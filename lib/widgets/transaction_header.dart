
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Transaction History",
        style: AppStyles.styleSemiBold20(context),
      ),
      subtitle: Text(
        "13 April 2022",
        style: AppStyles.styleMedium16(context).copyWith(
          color: AppColors.mediumGray,
        ),
      ),
      trailing: Text(
        "See all",
        style: AppStyles.styleMedium16(context).copyWith(
          color: AppColors.lightBlue,
        ),
      ),
    );
  }
}

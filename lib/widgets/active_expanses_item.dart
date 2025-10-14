import 'package:dashboard/models/expanses_item_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveExpansesItem extends StatelessWidget {
  const ActiveExpansesItem({super.key, required this.expansesItemModel});
  final ExpansesItemModel expansesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: AppColors.lightBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.white.withValues(alpha: 0.10),
                child: SvgPicture.asset(
                  expansesItemModel.iconData,
                  color: AppColors.white,
                  width: 20,
                  height: 20,
                ),
              ),
              Expanded(child: SizedBox()),
              Icon(
                Icons.arrow_forward_ios_rounded,
                weight: 1,
                color: AppColors.white,
              ),
            ],
          ),
          SizedBox(height: 34),
          Text(
            expansesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(color: AppColors.white),
          ),
          Text(
            expansesItemModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: AppColors.lightGray.withValues(alpha: 0.80),
            ),
          ),
          SizedBox(height: 16),
          Text(
            expansesItemModel.amount,
            style: AppStyles.styleSemiBold24.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}

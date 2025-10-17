import 'package:dashboard/models/expanses_item_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InActiveExpansesItem extends StatelessWidget {
  const InActiveExpansesItem({super.key, required this.expansesItemModel});
  final ExpansesItemModel expansesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.grayBackground),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.background,
                  child: SvgPicture.asset(
                    expansesItemModel.iconData,
                    color: AppColors.lightBlue,
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Icon(
                Icons.arrow_forward_ios_rounded,
                weight: 1,
                color: AppColors.primaryBlue,
              ),
            ],
          ),
          SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expansesItemModel.title,
              style: AppStyles.styleSemiBold16(
                context,
              ).copyWith(color: AppColors.primaryBlue),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expansesItemModel.date,
              style: AppStyles.styleRegular14(
                context,
              ).copyWith(color: AppColors.mediumGray),
            ),
          ),
          SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expansesItemModel.amount,
              style: AppStyles.styleSemiBold24(
                context,
              ).copyWith(color: AppColors.lightBlue),
            ),
          ),
        ],
      ),
    );
  }
}

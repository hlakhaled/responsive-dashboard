import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/utils/app_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.lightBlue,
          image: const DecorationImage(
            image: AssetImage(Assets.assetsImagesMask),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16.copyWith(
                  color: AppColors.white,
                ),
              ),
              subtitle: Text("Syah Bandi", style: AppStyles.styleMediumn20),
              trailing: SvgPicture.asset(Assets.assetsImagesGallery),
            ),
            Expanded(child: SizedBox()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "0918 8124 0042 8129",
                  style: AppStyles.styleBold24.copyWith(color: AppColors.white),
                ),
                Text(
                  "12/20 - 124",
                  style: AppStyles.styleRegular16.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/utils/app_styles.dart';

import 'package:dashboard/widgets/custom_list_tile.dart';
import 'package:dashboard/widgets/drawer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      width: MediaQuery.sizeOf(context).width < 900
          ? MediaQuery.sizeOf(context).width * 0.7
          : 0,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: CustomListTile(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              leadingIconPath: Assets.assetsImagesLogo,
            ),
          ),
          SliverToBoxAdapter(child: DrawerList()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 16)),
                ListTile(
                  title: Text(
                    'Setting system',
                    style: AppStyles.styleRegular16(context),
                  ),
                  leading: SvgPicture.asset(
                    Assets.assetsImagesSetting,
                    width: 24,
                    height: 24,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Logout account',
                    style: AppStyles.styleRegular16(context),
                  ),
                  leading: SvgPicture.asset(
                    Assets.assetsImagesLogout,
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

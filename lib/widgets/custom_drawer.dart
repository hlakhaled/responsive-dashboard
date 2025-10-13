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
    return CustomScrollView(
      slivers: [
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
              Expanded(child: SizedBox()),
              ListTile(
                title: Text('Setting system', style: AppStyles.styleRegular16),
                leading: SvgPicture.asset(
                  Assets.assetsImagesSetting,
                  width: 24,
                  height: 24,
                ),
              ),
              ListTile(
                title: Text('Logout account', style: AppStyles.styleRegular16),
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
    );
  }
}

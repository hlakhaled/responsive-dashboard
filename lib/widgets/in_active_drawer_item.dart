import 'package:dashboard/models/drawer_list_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItems});

  final DrawerListModel drawerItems;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: drawerItems.iconPath.isNotEmpty
          ? SvgPicture.asset(drawerItems.iconPath, width: 24, height: 24)
          : null,
      title: Text(drawerItems.title, style: AppStyles.styleRegular16(context)),
    );
  }
}

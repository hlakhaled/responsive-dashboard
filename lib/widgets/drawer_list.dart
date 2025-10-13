import 'package:dashboard/models/drawer_list_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item.dart';

import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  int selectedIndex = 0;
  final List<DrawerListModel> drawerItems = const [
    DrawerListModel(title: 'Dashboard', iconPath: Assets.assetsImagesDashboard),
    DrawerListModel(
      title: 'My Transaction',
      iconPath: Assets.assetsImagesTransaction,
    ),
    DrawerListModel(
      title: 'Statistics',
      iconPath: Assets.assetsImagesStatistics,
    ),
    DrawerListModel(
      title: 'Wallet Account',
      iconPath: Assets.assetsImagesWallet,
    ),
    DrawerListModel(
      title: 'My Investments',
      iconPath: Assets.assetsImagesInvestment,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: DrawerItem(
              isSelectedl: selectedIndex == index,
              drawerItems: drawerItems[index],
            ),
          ),
        );
      },
      itemCount: 5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}

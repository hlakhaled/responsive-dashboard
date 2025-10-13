import 'package:dashboard/models/drawer_list_model.dart';
import 'package:dashboard/widgets/active_drawer_item.dart';
import 'package:dashboard/widgets/in_active_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isSelectedl,
    required this.drawerItems,
  });
  final bool isSelectedl;
  final DrawerListModel drawerItems;
  @override
  Widget build(BuildContext context) {
    return isSelectedl
        ? ActiveDrawerItem(drawerItems: drawerItems)
        : InActiveDrawerItem(drawerItems: drawerItems);
  }
}

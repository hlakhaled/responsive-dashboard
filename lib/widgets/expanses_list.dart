import 'package:dashboard/models/expanses_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/active_expanses_item.dart';
import 'package:dashboard/widgets/in_active_expanses_item.dart';
import 'package:flutter/material.dart';

class ExpansesList extends StatefulWidget {
  const ExpansesList({super.key});

  @override
  State<ExpansesList> createState() => _ExpansesListState();
}

class _ExpansesListState extends State<ExpansesList> {
  int selectedIndex = 0;
  final List<ExpansesItemModel> expansesItems = const [
    ExpansesItemModel(
      title: "Balance",
      amount: "\$20,129",
      date: "April 2022",
      iconData: Assets.assetsImagesMoneys,
    ),
    ExpansesItemModel(
      title: "Income",
      amount: "\$15,129",
      date: "April 2022",
      iconData: Assets.assetsImagesCardReceive,
    ),
    ExpansesItemModel(
      title: "Expenses",
      amount: "\$5,129",
      date: "April 2022",
      iconData: Assets.assetsImagesCardSend,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: expansesItems.asMap().entries.map((entry) {
        int idx = entry.key;
        ExpansesItemModel item = entry.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = idx;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: idx != expansesItems.length - 1 ? 16 : 0,
              ),
              child: selectedIndex == idx
                  ? ActiveExpansesItem(expansesItemModel: item)
                  : InActiveExpansesItem(expansesItemModel: item),
            ),
          ),
        );
      }).toList(),
    );
  }
}

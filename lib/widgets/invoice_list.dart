import 'package:dashboard/models/invoice_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/invoice_item.dart';
import 'package:flutter/material.dart';

class InvoiceList extends StatelessWidget {
  const InvoiceList({super.key});
  final List<InvoiceItemModel> invoiceItemList = const [
    InvoiceItemModel(
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
      iconData: Assets.assetsImagesAvatar1,
    ),
    InvoiceItemModel(
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
      iconData: Assets.assetsImagesAvatar2,
    ),
    InvoiceItemModel(
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
      iconData: Assets.assetsImagesAvatar1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: invoiceItemList.map((e) {
          return IntrinsicWidth(child: InvoiceItem(invoiceItemModel: e));
        }).toList(),
      ),
    );
  }
}

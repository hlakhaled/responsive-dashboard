import 'package:dashboard/models/invoice_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InvoiceItem extends StatelessWidget {
  const InvoiceItem({super.key, required this.invoiceItemModel});
  final InvoiceItemModel invoiceItemModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: SvgPicture.asset(invoiceItemModel.iconData),
        title: Text(invoiceItemModel.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          invoiceItemModel.subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}

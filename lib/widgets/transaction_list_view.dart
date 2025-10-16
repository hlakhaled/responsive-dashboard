import 'package:dashboard/models/transaction_item_model.dart';
import 'package:dashboard/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  final List<TransactionItemModel> items = const [
    TransactionItemModel(
      title: "Cash Withdrawal",
      subtitle: "13 Apr, 2022",
      amount: "\$20,129",
    ),
    TransactionItemModel(
      title: "Landing Page project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      amount: "\$2,000",
    ),
    TransactionItemModel(
      title: "Juni Mobile App project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      amount: "\$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return TransactionItem(
          transactionItemModel: items[index],
          isActive: index == 1 ? true : false,
        );
      },
    );
  }
}

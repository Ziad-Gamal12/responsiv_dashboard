import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/Transactionhistoryitem_Model.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/TransactionHeader.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/TransactionListViewItem.dart';

class Mytransactionhistorysection extends StatelessWidget {
  const Mytransactionhistorysection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Transactionheader(),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: TransactionhistoryitemModel.transactionHistoryList
              .map((e) =>
                  TransactionListViewItem(transactionhistoryitementity: e))
              .toList(),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/entities/TransactionHistoryItemEntity.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class TransactionListViewItem extends StatelessWidget {
  const TransactionListViewItem(
      {super.key, required this.transactionhistoryitementity});
  final Transactionhistoryitementity transactionhistoryitementity;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          title: Text(
            transactionhistoryitementity.title,
            style: AppTextStyles.SemiBold16.copyWith(
                color: const Color(0xff064061)),
          ),
          subtitle: Text(
            transactionhistoryitementity.subtitle,
            style: AppTextStyles.Regular16.copyWith(
                color: const Color(0xffAAAAAA)),
          ),
          trailing: Text(
            transactionhistoryitementity.money,
            style: AppTextStyles.SemiBold20.copyWith(
                color: transactionhistoryitementity.isIncreasing
                    ? const Color(0xff7DD97B)
                    : const Color(0xffFF0000)),
          ),
        ),
      ),
    );
  }
}

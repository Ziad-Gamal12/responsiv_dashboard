import 'package:responsive_dashboard/core/entities/TransactionHistoryItemEntity.dart';

class TransactionhistoryitemModel {
  static List<Transactionhistoryitementity> transactionHistoryList = [
    Transactionhistoryitementity(
        title: "Cash Withdrawal",
        subtitle: "13 Apr, 2022 ",
        money: "\$20,129",
        isIncreasing: false),
    Transactionhistoryitementity(
        title: "Landing Page project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        money: "\$2,000",
        isIncreasing: true),
    Transactionhistoryitementity(
        title: "Juni Mobile App project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        money: "\$20,129",
        isIncreasing: true),
  ];
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/MyCardsSection.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/MyTransactionHistorySection.dart';
import 'package:responsive_dashboard/core/widgets/customBackgroundContainer.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: const Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          Mytransactionhistorysection()
        ],
      ),
    );
  }
}

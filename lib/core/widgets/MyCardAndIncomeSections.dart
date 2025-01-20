import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/Income/incomeSection.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/MyCardsAndTransactionHistorySection.dart';

class Mycardandincomesections extends StatelessWidget {
  const Mycardandincomesections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, top: 40, bottom: 40),
      child: ListView(
        children: const [
          MyCardsAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          Incomesection()
        ],
      ),
    );
  }
}

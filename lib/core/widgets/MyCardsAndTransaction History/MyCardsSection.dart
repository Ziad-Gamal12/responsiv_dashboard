import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/MyCardHeader.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/MyCardsDotsIndicator.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/MycardsPageView.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Mycardheader(),
        SizedBox(
          height: 16,
        ),
        Mycardspageview(),
        SizedBox(
          height: 19,
        ),
        Mycardsdotsindicator(),
      ],
    );
  }
}

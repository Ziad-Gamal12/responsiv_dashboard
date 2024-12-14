import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/MyCardHeader.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsDotsIndicator.dart';
import 'package:responsive_dashboard/core/widgets/MycardsPageView.dart';
import 'package:responsive_dashboard/core/widgets/customBackgroundContainer.dart';

class Mycardandincomesections extends StatelessWidget {
  const Mycardandincomesections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, top: 40, bottom: 40),
      child: Column(
        children: [
          CustomBackgroundContainer(
              padding: 24,
              child: const Column(
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
                  Divider(
                    height: 40,
                    color: Color(0xffF1F1F1),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

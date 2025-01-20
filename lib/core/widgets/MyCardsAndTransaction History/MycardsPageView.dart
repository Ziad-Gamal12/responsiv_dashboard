import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/Variables.dart';
import 'package:responsive_dashboard/core/widgets/MyCardsAndTransaction%20History/CustomMyCardItem.dart';

class Mycardspageview extends StatelessWidget {
  const Mycardspageview({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: PageView(
        controller: Variables.myCardsPageViewController,
        children: const [
          Custommycarditem(),
          Custommycarditem(),
          Custommycarditem(),
        ],
      ),
    );
  }
}

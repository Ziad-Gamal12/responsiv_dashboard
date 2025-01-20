import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/Income/custominComeHeader.dart';
import 'package:responsive_dashboard/core/widgets/customBackgroundContainer.dart';

class Incomesection extends StatelessWidget {
  const Incomesection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20,
      child: const Column(
        children: [
          Customincomeheader(),
        ],
      ),
    );
  }
}

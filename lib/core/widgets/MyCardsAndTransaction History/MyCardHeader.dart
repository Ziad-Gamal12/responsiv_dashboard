import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class Mycardheader extends StatelessWidget {
  const Mycardheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "MY Card",
          style:
              AppTextStyles.SemiBold20.copyWith(color: const Color(0xff064061)),
        )
      ],
    );
  }
}

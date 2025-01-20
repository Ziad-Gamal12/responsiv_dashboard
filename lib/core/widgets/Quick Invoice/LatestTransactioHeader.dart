import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class LatestTransactioHeader extends StatelessWidget {
  const LatestTransactioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Latest Transaction",
      style: AppTextStyles.Medium16.copyWith(color: const Color(0xff064061)),
    );
  }
}

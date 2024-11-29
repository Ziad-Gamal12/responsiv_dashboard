import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style:
              AppTextStyles.SemiBold20.copyWith(color: const Color(0xff064061)),
        ),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            backgroundColor: Color(0xffFAFAFA),
            radius: 18,
            child: Icon(
              Icons.add,
              color: Color(0xff4EB7F2),
              size: 18,
            ),
          ),
        )
      ],
    );
  }
}

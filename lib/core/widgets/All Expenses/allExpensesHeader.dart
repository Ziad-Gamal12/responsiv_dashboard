import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';
import 'package:responsive_dashboard/core/widgets/CustomDropdownButton.dart';

class Allexpensesheader extends StatelessWidget {
  const Allexpensesheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style:
              AppTextStyles.SemiBold20.copyWith(color: const Color(0xff064061)),
        ),
        const Spacer(),
        CustomDropdownButton(
          items: const [
            DropdownMenuItem(
                value: "Daily",
                child: Text(
                  "Daily",
                )),
            DropdownMenuItem(
                value: "Monthly",
                child: Text(
                  "Monthly",
                )),
            DropdownMenuItem(
                value: "Yearly",
                child: Text(
                  "Yearly",
                )),
          ],
          valueChanged: (value) {},
          hintText: "Monthly",
        )
      ],
    );
  }
}

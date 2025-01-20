import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';
import 'package:responsive_dashboard/core/widgets/CustomDropdownButton.dart';

class Customincomeheader extends StatelessWidget {
  const Customincomeheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style:
              AppTextStyles.SemiBold20.copyWith(color: const Color(0xff064061)),
        ),
        CustomDropdownButton(
          hintText: "Monthly",
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
        )
      ],
    );
  }
}

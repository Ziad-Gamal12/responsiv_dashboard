import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';
import 'package:responsive_dashboard/core/widgets/CustomTextField.dart';

class Titledtextfield extends StatelessWidget {
  Titledtextfield(
      {super.key, required this.title, required this.hint, this.suffixImage});
  final String title;
  final String hint;
  String? suffixImage;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                AppTextStyles.Medium16.copyWith(color: const Color(0xff064061)),
          ),
          const SizedBox(
            height: 12,
          ),
          Customtextfield(
            hintText: hint,
            suffixImage: suffixImage,
          ),
        ],
      ),
    );
  }
}

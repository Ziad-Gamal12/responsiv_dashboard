// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class Customtextfield extends StatelessWidget {
  Customtextfield({super.key, required this.hintText, this.suffixImage});
  final String hintText;
  String? suffixImage;
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xffF1F1F1), width: 1),
    );
    return TextField(
      decoration: InputDecoration(
          fillColor: const Color(0xffFAFAFA),
          filled: true,
          border: outlineInputBorder,
          suffixIcon: suffixImage == null
              ? null
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    suffixImage!,
                  ),
                ),
          hintText: hintText,
          hintStyle:
              AppTextStyles.Regular16.copyWith(color: const Color(0xffAAAAAA)),
          focusedBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder),
    );
  }
}

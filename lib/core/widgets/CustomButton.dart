// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const Custombutton({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 62,
      elevation: 0,
      focusColor: color,
      highlightColor: color,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: onPressed,
      color: color,
      child: Text(text,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.SemiBold18.copyWith(color: textColor)),
    );
  }
}

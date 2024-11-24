import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class Custominactivedraweritem extends StatelessWidget {
  const Custominactivedraweritem(
      {super.key, required this.inactiveImage, required this.title});
  final String title, inactiveImage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppTextStyles.Regular16.copyWith(color: Colors.black),
      ),
      leading: SvgPicture.asset(
        inactiveImage,
        height: 24,
        width: 24,
      ),
    );
  }
}

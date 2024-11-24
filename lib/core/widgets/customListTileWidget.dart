import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class Customlisttilewidget extends StatelessWidget {
  const Customlisttilewidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          title,
          style:
              AppTextStyles.SemiBold16.copyWith(color: const Color(0xff064061)),
        ),
        leading: SvgPicture.asset(image),
        subtitle: Text(
          subtitle,
          style:
              AppTextStyles.Regular12.copyWith(color: const Color(0xffAAAAAA)),
        ),
      ),
    );
  }
}

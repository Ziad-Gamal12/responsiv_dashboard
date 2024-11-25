import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';

class Customactivedraweritem extends StatelessWidget {
  const Customactivedraweritem(
      {super.key, required this.activeimage, required this.title});
  final String title, activeimage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppTextStyles.Bold16.copyWith(color: const Color(0xff4EB7F2)),
      ),
      leading: Image.asset(
        activeimage,
        color: const Color(0xff4EB7F2),
        height: 24,
        width: 24,
      ),
      trailing: Container(
        height: double.infinity,
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    ).animate().fade(duration: 300.ms).moveX(begin: -50, duration: 300.ms);
  }
}

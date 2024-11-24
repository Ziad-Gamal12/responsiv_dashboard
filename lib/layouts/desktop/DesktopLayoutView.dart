import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/CustomDrawer.dart';

class Desktoplayoutview extends StatelessWidget {
  const Desktoplayoutview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Expanded(child: Customdrawer())],
    );
  }
}

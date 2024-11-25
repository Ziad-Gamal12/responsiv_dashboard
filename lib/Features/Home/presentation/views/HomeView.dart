import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/AdaptiveLayoutWidget.dart';
import 'package:responsive_dashboard/layouts/desktop/DesktopLayoutView.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayoutWidget(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const Desktoplayoutview()),
    );
  }
}

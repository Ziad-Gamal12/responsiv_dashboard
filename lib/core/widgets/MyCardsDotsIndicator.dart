import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/Variables.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Mycardsdotsindicator extends StatelessWidget {
  const Mycardsdotsindicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: Variables.myCardsPageViewController,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: const ExpandingDotsEffect(
          activeDotColor: Color(0xff4EB7F2),
          dotColor: Color(0xffE8E8E8),
          dotHeight: 8,
          dotWidth: 10),
    );
  }
}

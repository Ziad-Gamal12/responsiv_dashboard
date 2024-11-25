import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/entities/allExpensesItemEntity.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';

class Activeallexpensesitem extends StatelessWidget {
  const Activeallexpensesitem({
    super.key,
    required this.allexpensesitementity,
  });
  final Allexpensesitementity allexpensesitementity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xffFAFAFA).withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    allexpensesitementity.imageHeader,
                    height: 32,
                    width: 32,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              SvgPicture.asset(Assets.assetsImagesArrowRight)
            ],
          ),
          const Expanded(
            child: SizedBox(
              height: 34,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                allexpensesitementity.title,
                style: AppTextStyles.SemiBold16.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                allexpensesitementity.date,
                style: AppTextStyles.Regular14.copyWith(
                    color: const Color(0xffFAFAFA)),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                allexpensesitementity.price,
                style: AppTextStyles.SemiBold24.copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    ).animate().fade(duration: 300.ms);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/entities/allExpensesItemEntity.dart';
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';

class Inactiveallexpensesitem extends StatelessWidget {
  const Inactiveallexpensesitem({
    super.key,
    required this.allexpensesitementity,
  });
  final Allexpensesitementity allexpensesitementity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffF1F1F1), width: 1),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xffFAFAFA),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    allexpensesitementity.imageHeader,
                    height: 32,
                    width: 32,
                    color: const Color(0xff4EB7F2),
                  ),
                ),
              ),
              SvgPicture.asset(
                Assets.assetsImagesArrowRight,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                allexpensesitementity.title,
                style: AppTextStyles.SemiBold16.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                allexpensesitementity.date,
                style: AppTextStyles.Regular14.copyWith(
                    color: const Color(0xffAAAAAA)),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                allexpensesitementity.price,
                style: AppTextStyles.SemiBold24.copyWith(
                    color: const Color(0xff4EB7F2)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

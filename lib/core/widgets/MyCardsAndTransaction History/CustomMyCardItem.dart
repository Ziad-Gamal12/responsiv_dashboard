import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as p;
import 'package:responsive_dashboard/core/utils/AppTextStyles.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';

class Custommycarditem extends StatelessWidget {
  const Custommycarditem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      padding: const EdgeInsets.only(top: 20, bottom: 27, left: 31, right: 24),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: p.Svg(
              Assets.assetsImagesMyCardImage,
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name card",
                    style:
                        AppTextStyles.Regular16.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Syah Bandi",
                    style: AppTextStyles.Medium20.copyWith(color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(Assets.assetsImagesGallery)
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "0918 8124 0042 8129",
                style: AppTextStyles.SemiBold24.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "12/20 - 124",
                style: AppTextStyles.Regular16.copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}

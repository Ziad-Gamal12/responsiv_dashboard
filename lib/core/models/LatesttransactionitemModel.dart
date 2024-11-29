import 'package:responsive_dashboard/core/entities/LatestTransactionItemEntity.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';

class LatesttransactionitemModel {
  static List<Latesttransactionitementity> toList() {
    return [
      Latesttransactionitementity(
          image: Assets.assetsImagesUserIcon2,
          title: "Madrani Andi",
          subtitle: "Madraniadi20@gmail"),
      Latesttransactionitementity(
          image: Assets.assetsImagesUserIcon3,
          title: "Josua Nunito",
          subtitle: "Josh Nunito@gmail.com"),
      Latesttransactionitementity(
          image: Assets.assetsImagesUserIcon2,
          title: "Madrani Andi",
          subtitle: "Madraniadi20@gmail"),
    ];
  }
}

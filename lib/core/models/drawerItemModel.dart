import 'package:responsive_dashboard/core/entities/drawerItemEntity.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';

class Draweritemmodel {
  static List<Draweritementity> toList() {
    return [
      Draweritementity(
          activeimage: Assets.assetsImagesActiveDashboardIcon,
          inActiveimage: Assets.assetsImagesDashboardIcon,
          title: "Dashboard"),
      Draweritementity(
          activeimage: Assets.assetsImagesActiveConverCardIcon,
          inActiveimage: Assets.assetsImagesMyTransactionIcon,
          title: "My Transaction"),
      Draweritementity(
          activeimage: Assets.assetsImagesActiveGraphIcon,
          inActiveimage: Assets.assetsImagesStatisticsIcon,
          title: "Statistics"),
      Draweritementity(
          activeimage: Assets.assetsImagesActiveWalletIcon,
          inActiveimage: Assets.assetsImagesWalletAccountIcon,
          title: "Wallet Account"),
      Draweritementity(
          activeimage: Assets.assetsImagesActiveInvestmentIcon,
          inActiveimage: Assets.assetsImagesInvestmentIcon,
          title: "My Investments"),
    ];
  }
}

import 'package:responsive_dashboard/core/entities/allExpensesItemEntity.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';

class Allexpensesitemmodel {
  static List<Allexpensesitementity> toList() {
    return [
      Allexpensesitementity(
          imageHeader: Assets.assetsImagesMoneys,
          title: "Balance",
          date: "April 2022",
          price: "\$20,129"),
      Allexpensesitementity(
          imageHeader: Assets.assetsImagesCardReceive,
          title: "Income",
          date: "April 2022",
          price: "\$20,129"),
      Allexpensesitementity(
          imageHeader: Assets.assetsImagesExpensesIcon,
          title: "Expenses",
          date: "April 2022",
          price: "\$20,129")
    ];
  }
}

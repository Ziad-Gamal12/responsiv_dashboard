import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/entities/allExpensesItemEntity.dart';
import 'package:responsive_dashboard/core/widgets/ActiveAllExpensesItem.dart';
import 'package:responsive_dashboard/core/widgets/InActiveAllExpensesItem.dart';

class Allexpensesitem extends StatelessWidget {
  const Allexpensesitem(
      {super.key,
      required this.isSelected,
      required this.allexpensesitementity});
  final bool isSelected;
  final Allexpensesitementity allexpensesitementity;

  @override
  Widget build(BuildContext context) {
    return isSelected == true
        ? Activeallexpensesitem(
            allexpensesitementity: allexpensesitementity,
          )
        : Inactiveallexpensesitem(
            allexpensesitementity: allexpensesitementity,
          );
  }
}

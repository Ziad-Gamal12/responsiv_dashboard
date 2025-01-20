// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/entities/LatestTransactionItemEntity.dart';
import 'package:responsive_dashboard/core/models/LatesttransactionitemModel.dart';
import 'package:responsive_dashboard/core/widgets/customListTileWidget.dart';

class Latesttransactionlistview extends StatelessWidget {
  Latesttransactionlistview({super.key});
  List<Latesttransactionitementity> items = LatesttransactionitemModel.toList();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: Customlisttilewidget(
                title: items[index].title,
                subtitle: items[index].subtitle,
                image: items[index].image),
          );
        });
  }
}

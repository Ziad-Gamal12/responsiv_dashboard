import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/allExpensesItemModel.dart';
import 'package:responsive_dashboard/core/widgets/AllexpensesItem.dart';
import 'package:responsive_dashboard/core/widgets/allExpensesHeader.dart';

class Allexpensessection extends StatefulWidget {
  const Allexpensessection({super.key});

  @override
  State<Allexpensessection> createState() => _AllexpensessectionState();
}

class _AllexpensessectionState extends State<Allexpensessection> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          const Allexpensesheader(),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: Allexpensesitemmodel.toList().asMap().entries.map((e) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentindex = e.key;
                    });
                    log(currentindex.toString());
                    log(e.key.toString());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: AspectRatio(
                      aspectRatio: 180 / 216,
                      child: Allexpensesitem(
                          isSelected: currentindex == e.key ? true : false,
                          allexpensesitementity: e.value),
                    ),
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

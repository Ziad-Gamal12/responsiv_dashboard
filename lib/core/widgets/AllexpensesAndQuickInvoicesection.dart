import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/core/widgets/All%20Expenses/allexpensesSection.dart';
import 'package:responsive_dashboard/core/widgets/Quick%20Invoice/Quickinvoicesection.dart';

class AllexpensesAndQuickInvoicesection extends StatelessWidget {
  const AllexpensesAndQuickInvoicesection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 40,
              bottom: 32,
              left: 32,
              right: 24,
            ),
            child: Column(
              children: [
                const Allexpensessection(),
                const SizedBox(
                  height: 24,
                ),
                Quickinvoicesection()
              ],
            ),
          ),
        ),
      ],
    );
  }
}

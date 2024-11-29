import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/core/widgets/Quickinvoicesection.dart';
import 'package:responsive_dashboard/core/widgets/allexpensesSection.dart';

class AllexpensesAndQuickInvoicesection extends StatelessWidget {
  const AllexpensesAndQuickInvoicesection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
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

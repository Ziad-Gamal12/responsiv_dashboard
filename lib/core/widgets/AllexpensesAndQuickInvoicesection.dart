import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/allexpensesSection.dart';

class AllexpensesAndQuickInvoicesection extends StatelessWidget {
  const AllexpensesAndQuickInvoicesection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Allexpensessection(),
        ],
      ),
    );
  }
}

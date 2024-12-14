import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/AllexpensesAndQuickInvoicesection.dart';
import 'package:responsive_dashboard/core/widgets/CustomDrawer.dart';
import 'package:responsive_dashboard/core/widgets/MyCardAndIncomeSections.dart';

class Desktoplayoutview extends StatelessWidget {
  const Desktoplayoutview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Customdrawer()),
        Expanded(flex: 3, child: AllexpensesAndQuickInvoicesection()),
        Expanded(flex: 2, child: Mycardandincomesections())
      ],
    );
  }
}

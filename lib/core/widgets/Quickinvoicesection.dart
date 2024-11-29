// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_dashboard/core/entities/quickInvoiceFormTextFieldsEntity.dart';
import 'package:responsive_dashboard/core/models/QuickinvoiceformtextfieldsModle.dart';
import 'package:responsive_dashboard/core/widgets/CustomButton.dart';
import 'package:responsive_dashboard/core/widgets/LatestTransactioHeader.dart';
import 'package:responsive_dashboard/core/widgets/LatestTransactionListView.dart';
import 'package:responsive_dashboard/core/widgets/QuickInvoiceForm.dart';
import 'package:responsive_dashboard/core/widgets/QuickInvoiceHeader.dart';
import 'package:responsive_dashboard/core/widgets/customBackgroundContainer.dart';

class Quickinvoicesection extends StatelessWidget {
  Quickinvoicesection({super.key});
  List<Quickinvoiceformtextfieldsentity> textFields =
      QuickinvoiceformtextfieldsModle.toList();
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(
            height: 24,
          ),
          const LatestTransactioHeader(),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
              height: 80,
              child: Latesttransactionlistview().animate().moveX(
                  begin: 100,
                  end: 0,
                  duration: const Duration(milliseconds: 500))),
          const Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(textFields: textFields),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                  child: Custombutton(
                      text: "Add more details",
                      color: Colors.white,
                      textColor: const Color(0xff4EB7F2),
                      onPressed: () {})),
              Expanded(
                  child: Custombutton(
                      text: "Send Money",
                      color: const Color(0xff4EB7F2),
                      textColor: Colors.white,
                      onPressed: () {}))
            ],
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/entities/quickInvoiceFormTextFieldsEntity.dart';
import 'package:responsive_dashboard/core/widgets/titledTextField.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
    required this.textFields,
  });

  final List<Quickinvoiceformtextfieldsentity> textFields;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Titledtextfield(
                title: textFields[0].title, hint: textFields[0].hint),
            const SizedBox(
              width: 16,
            ),
            Titledtextfield(
                title: textFields[1].title, hint: textFields[1].hint),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Titledtextfield(
                title: textFields[2].title, hint: textFields[2].hint),
            const SizedBox(
              width: 16,
            ),
            Titledtextfield(
              title: textFields[3].title,
              hint: textFields[3].hint,
              suffixImage: textFields[3].suffixImage,
            ),
          ],
        )
      ],
    );
  }
}

import 'package:responsive_dashboard/core/entities/quickInvoiceFormTextFieldsEntity.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';

class QuickinvoiceformtextfieldsModle {
  static List<Quickinvoiceformtextfieldsentity> toList() {
    return [
      Quickinvoiceformtextfieldsentity(
          title: "Customer name", hint: "Type customer name"),
      Quickinvoiceformtextfieldsentity(
          title: "Customer Email", hint: "Type customer email"),
      Quickinvoiceformtextfieldsentity(
          title: "Item name", hint: "Type Item name"),
      Quickinvoiceformtextfieldsentity(
          title: "Item mount",
          hint: "USD",
          suffixImage: Assets.assetsImagesArrowDownIcon),
    ];
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.hintText,
    required this.valueChanged,
  });
  final List<DropdownMenuItem<String>> items;
  final String hintText;
  final ValueChanged<String?> valueChanged;
  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? currentvalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Monthly',
            style: TextStyle(
              color: Color(0xFF064060),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          const SizedBox(width: 18),
          SizedBox(
              width: 24,
              height: 24,
              child: SvgPicture.asset(Assets.assetsImagesArrowDownIcon)),
        ],
      ),
    );
  }
}

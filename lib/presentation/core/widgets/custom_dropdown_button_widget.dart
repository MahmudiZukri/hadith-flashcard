import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';

class CustomDropdownButtonWidget extends StatelessWidget {
  const CustomDropdownButtonWidget({
    required this.value,
    this.fontSize = 14.0,
    required this.items,
    required this.borderRadius,
    required this.onChanged,
    required this.borderColor,
    required this.backgroundColor,
    super.key,
  });

  final String? value;
  final double fontSize;
  final List<DropdownMenuItem<String>>? items;
  final BorderRadiusGeometry? borderRadius;
  final Function(String?)? onChanged;
  final Color borderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(18.0),
          value: value,
          icon: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.arrow_drop_down,
              color: whiteColor,
            ),
          ),
          elevation: 16,
          style: GoogleFonts.poppins().copyWith(
            color: blackColor,
            fontSize: fontSize,
          ),
          underline: const SizedBox(),
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
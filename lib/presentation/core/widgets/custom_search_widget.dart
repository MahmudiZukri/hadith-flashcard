import 'package:flutter/material.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({
    Key? key,
    this.height = 32.0,
    this.iconSize = 10.0,
    this.fontSize = 14.0,
    this.hintFontSize = 14.0,
    this.isDense = false,
    this.borderColor = blackColor,
    this.cursorColor = greyColor,
    this.iconColor = blackColor,
    this.fontColor = blackColor,
    this.backgroundColor = greyColor,
    this.hintColor = blackColor,
    this.borderRadius,
    this.width,
    this.onChanged,
    this.suffixIcon,
    this.hintText = 'Search',
    this.contentPadding,
  }) : super(key: key);

  final double height;
  final double iconSize;
  final double fontSize;
  final double hintFontSize;
  final bool isDense;
  final Color borderColor;
  final Color cursorColor;
  final Color iconColor;
  final Color backgroundColor;
  final Color fontColor;
  final Color hintColor;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: width != null ? 0 : 1,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.only(right: 14.0),
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: borderRadius),
        child: TextField(
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
          ),
          cursorColor: cursorColor,
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: contentPadding,
            isDense: isDense,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: hintFontSize,
              color: hintColor,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: iconColor,
            ),
            suffixIcon: suffixIcon,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
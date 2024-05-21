part of 'widgets.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({
    super.key,
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
  });

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
        decoration: BoxDecoration(
          color: colorScheme().background,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: borderRadius,
        ),
        child: TextField(
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.number,
          cursorColor: cursorColor,
          onChanged: onChanged,
          style: TextStyle(
            fontSize: fontSize,
          ),
          decoration: InputDecoration(
            isDense: isDense,
            hintText: hintText,
            suffixIcon: suffixIcon,
            border: InputBorder.none,
            contentPadding: contentPadding,
            hintStyle: TextStyle(
              fontSize: hintFontSize,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: iconColor,
              size: 22.0,
            ),
          ),
        ),
      ),
    );
  }
}

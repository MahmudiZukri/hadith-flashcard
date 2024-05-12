part of 'widgets.dart';

class CustomDropdownButtonWidget<T> extends StatelessWidget {
  const CustomDropdownButtonWidget({
    required this.value,
    required this.items,
    required this.borderRadius,
    required this.onChanged,
    required this.borderColor,
    required this.backgroundColor,
    this.fontSize = 14.0,
    this.width,
    this.hint,
    super.key,
  });

  final T? value;
  final List<DropdownMenuItem<T>>? items;
  final BorderRadiusGeometry? borderRadius;
  final Function(T?)? onChanged;
  final Color borderColor;
  final Color? backgroundColor;
  final double fontSize;
  final double? width;
  final Widget? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        color: colorScheme().background,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: DropdownButton<T>(
          hint: hint,
          borderRadius: BorderRadius.circular(18.0),
          value: value,
          icon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.arrow_drop_down,
              color: colorScheme().background,
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

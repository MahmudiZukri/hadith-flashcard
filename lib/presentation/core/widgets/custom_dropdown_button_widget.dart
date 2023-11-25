part of 'widgets.dart';

class CustomDropdownButtonWidget extends StatelessWidget {
  const CustomDropdownButtonWidget({
    required this.value,
    required this.items,
    required this.borderRadius,
    required this.onChanged,
    required this.borderColor,
    required this.backgroundColor,
    this.fontSize = 14.0,
    this.width,
    super.key,
  });

  final String? value;
  final List<DropdownMenuItem<String>>? items;
  final BorderRadiusGeometry? borderRadius;
  final Function(String?)? onChanged;
  final Color borderColor;
  final Color? backgroundColor;
  final double fontSize;
  final double? width;

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

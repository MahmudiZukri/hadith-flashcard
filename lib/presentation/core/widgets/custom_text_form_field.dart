part of 'widgets.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.labelText,
    required this.hintText,
    required this.onChanged,
    required this.validator,
    this.fillColor = backgroundColor,
    Key? key,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final Function(String)? onChanged;
  final String? Function(String?) validator;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: blackTextFont,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: primaryTextFont.copyWith(fontSize: 15.0),
        hintText: hintText,
        hintStyle: greyTextFont,
        filled: true,
        fillColor: fillColor,
        contentPadding: const EdgeInsets.all(18.0),
        border: OutlineInputBorder(
          borderRadius: defaultBorderRadius(),
          borderSide: const BorderSide(
            color: primaryColor,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: defaultBorderRadius(),
          borderSide: BorderSide(
            color: primaryColor.withOpacity(0.2),
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: defaultBorderRadius(),
          borderSide: const BorderSide(
            color: primaryColor,
            width: 2.0,
          ),
        ),
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}

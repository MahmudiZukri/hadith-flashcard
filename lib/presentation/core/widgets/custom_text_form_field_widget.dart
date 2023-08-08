part of 'widgets.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    this.labelText,
    this.hintText,
    this.onChanged,
    this.validator,
    this.isPasswordTextField = false,
    this.eyeOnTap,
    this.isEyeOpen,
    this.fillColor = defaultBackgroundColor,
    Key? key,
  }) : super(key: key);

  final String? labelText;
  final String? hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isPasswordTextField;
  final Function()? eyeOnTap;
  final bool? isEyeOpen;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: blackTextFont,
      obscureText: isPasswordTextField
          ? isEyeOpen!
              ? false
              : true
          : false,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: primaryTextFont.copyWith(fontSize: 15.0),
        hintText: hintText,
        hintStyle: greyTextFont,
        filled: true,
        fillColor: fillColor,
        suffix: isPasswordTextField
            ? GestureDetector(
                onTap: eyeOnTap!(),
                child: Icon(
                  isEyeOpen! ? MdiIcons.eyeOff : MdiIcons.eye,
                ),
              )
            : const SizedBox(),
        contentPadding: const EdgeInsets.all(18.0),
        border: OutlineInputBorder(
          borderRadius: largeBorderRadius(),
          borderSide: const BorderSide(
            color: primaryColor,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: largeBorderRadius(),
          borderSide: BorderSide(
            color: primaryColor.withOpacity(0.2),
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: largeBorderRadius(),
          borderSide: const BorderSide(
            color: primaryColor,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}

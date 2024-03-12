part of 'widgets.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textStyle,
    required this.onPressed,
    this.height = 46,
    this.width,
    this.icon,
    this.disabledBackgroundColor,
    this.disabledTextColor,
    this.disabledBorderColor,
    this.isEnabled = true,
    this.isWithBorder = false,
    this.isWithElevation = false,
    this.isLoading = false,
  });

  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Function()? onPressed;
  final double height;
  final double? width;
  final Widget? icon;
  final Color? disabledBackgroundColor;
  final Color? disabledBorderColor;
  final Color? disabledTextColor;
  final bool isEnabled;
  final bool isWithBorder;
  final bool isWithElevation;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: isWithElevation ? null : 0.0,
          shape: RoundedRectangleBorder(
            side: isWithBorder
                ? BorderSide(
                    color: disabledBorderColor != null && isEnabled == false
                        ? disabledBorderColor!
                        : colorScheme().background,
                  )
                : BorderSide.none,
            borderRadius: largeBorderRadius(),
          ),
          backgroundColor: isEnabled
              ? backgroundColor
              : disabledBackgroundColor ?? greyColor,
        ),
        onPressed: isEnabled ? onPressed : () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            SizedBox(width: icon != null ? 10.0 : 0),
            isLoading
                ? const SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  )
                : Text(
                    text,
                    style: textStyle.copyWith(
                      color: isEnabled
                          ? textStyle.color
                          : disabledTextColor ?? colorScheme().background,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

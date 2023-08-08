part of 'widgets.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.textStyle,
    required this.onPressed,
    this.height = 46,
    this.width,
    this.icon,
    this.isActive = true,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Function()? onPressed;
  final double height;
  final double? width;
  final Widget? icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: largeBorderRadius(),
          ),
          backgroundColor: isActive ? backgroundColor : greyColor,
        ),
        onPressed: isActive ? onPressed : () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            SizedBox(width: icon != null ? 10.0 : 0),
            Text(
              text,
              style: textStyle.copyWith(
                color: isActive ? textStyle.color : primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

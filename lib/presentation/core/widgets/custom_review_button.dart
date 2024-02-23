part of 'widgets.dart';

class CustomReviewButton extends StatelessWidget {
  const CustomReviewButton({
    required this.userID,
    required this.quality,
    required this.onTap,
    this.disabled = true,
    super.key,
  });

  final String userID;
  final int quality;
  final Function() onTap;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? () {} : onTap,
      child: Container(
        height: 44,
        width: ((screenWidth(context) - defaultMargin * 2) / 6) - 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: disabled
              ? greyColor
              : quality > 2
                  ? primaryColor
                  : redColor,
        ),
        child: Center(
          child: Text(
            quality.toString(),
            style: adaptiveTextFont.copyWith(
              fontSize: 14.0,
              color: colorScheme(context).inversePrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

part of 'widgets.dart';

class CustomReviewButton extends StatelessWidget {
  const CustomReviewButton({
    required this.userID,
    required this.cardController,
    required this.quality,
    required this.onTap,
    super.key,
  });

  final String userID;
  final FlipCardController cardController;
  final int quality;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        width: ((screenWidth(context) - defaultMargin * 2) / 6) - 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: quality > 2 ? primaryColor : redColor,
        ),
        child: Center(
          child: Text(
            quality.toString(),
            style: whiteTextFont.copyWith(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
part of 'widgets.dart';

class CustomShimmerWidget extends StatelessWidget {
  const CustomShimmerWidget({
    required this.height,
    required this.width,
    required this.borderRadius,
    super.key,
  });

  final double height;
  final double width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: blackColor,
      highlightColor: colorScheme().surface,
      period: const Duration(
        milliseconds: 2000,
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: blackColor.withOpacity(
            0.04,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius,
            ),
          ),
        ),
      ),
    );
  }
}

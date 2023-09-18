part of 'widgets.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    this.height = 2,
    this.color = greyColor,
    super.key,
  });

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      color: color,
    );
  }
}

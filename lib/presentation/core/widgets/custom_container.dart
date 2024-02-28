part of 'widgets.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.child,
    required this.color,
  }) : super(key: key);

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) / 2,
      width: screenWidth(context) - (screenWidth(context) / 4.5),
      padding: const EdgeInsets.all(21.2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: mediumBorderRadius(),
      ),
      child: child,
    );
  }
}

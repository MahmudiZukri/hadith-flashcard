part of 'widgets.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 26,
      width: 26,
      child: CircularProgressIndicator(
        color: primaryColor,
      ),
    );
  }
}

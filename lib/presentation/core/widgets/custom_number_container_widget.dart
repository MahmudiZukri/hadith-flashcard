part of 'widgets.dart';

class CustomNumberContainerWidget extends StatelessWidget {
  const CustomNumberContainerWidget({
    super.key,
    required this.number,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 34.0,
        ),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          CommonUtils.currencyFormat(
            number,
            showSymbol: false,
          ),
          textAlign: TextAlign.center,
          style: adaptiveTextFont().copyWith(
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
            color: colorScheme().inversePrimary,
          ),
        ),
      ),
    );
  }
}

part of 'shared.dart';

const double defaultMargin = 24;
Duration defaultDuration() => const Duration(milliseconds: 200);
double screenWidth(context) => MediaQuery.of(context).size.width;
double screenHeight(context) => MediaQuery.of(context).size.height;
double keyboardSize(context) => MediaQuery.of(context).viewInsets.bottom;
double statusBarHeight(context) => MediaQuery.of(context).viewPadding.top;
BorderRadius largeBorderRadius() => BorderRadius.circular(45.0);
BorderRadius mediumBorderRadius() => BorderRadius.circular(20.0);

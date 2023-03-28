part of 'shared.dart';

const double defaultMargin = 24;
Duration defaultDuration() => const Duration(milliseconds: 250);
PageEvent? prevPageEvent;
double screenWidth(context) => MediaQuery.of(context).size.width;
double screenHeight(context) => MediaQuery.of(context).size.height;
double keyboardSize(context) => MediaQuery.of(context).viewInsets.bottom;
BorderRadius defaultBorderRadius() => BorderRadius.circular(45.0);

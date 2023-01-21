part of 'shared.dart';

const double defaultMargin = 24;
PageEvent? prevPageEvent;
double screenWidth(context) => MediaQuery.of(context).size.width;
double screenHeight(context) => MediaQuery.of(context).size.height;
BorderRadius defaultBorderRadius() => BorderRadius.circular(12.0);

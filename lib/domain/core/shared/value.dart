part of 'shared.dart';

const double defaultMargin = 24;
Duration defaultDuration() => const Duration(milliseconds: 200);
double screenWidth() => MediaQuery.of(Get.context!).size.width;
double screenHeight() => MediaQuery.of(Get.context!).size.height;
double keyboardSize() => MediaQuery.of(Get.context!).viewInsets.bottom;
double statusBarHeight() => MediaQuery.of(Get.context!).viewPadding.top;
BorderRadius largeBorderRadius() => BorderRadius.circular(45.0);
BorderRadius mediumBorderRadius() => BorderRadius.circular(20.0);
ColorScheme colorScheme({BuildContext? context}) =>
    Theme.of(context ?? Get.context!).colorScheme;

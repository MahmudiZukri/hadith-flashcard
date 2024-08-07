part of 'shared.dart';

class CustomTheme {
  // light theme
  static final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightBackgroundColor,
    textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: blackColor),
    colorScheme: ColorScheme.light(
      primary: blackColor,
      inversePrimary: whiteColor,
      surface: whiteColor.withOpacity(0.7),
    ),
  );

  // dark theme
  static final darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: blackBackgroundColor,
    textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: whiteColor),
    colorScheme: ColorScheme.dark(
      primary: whiteColor,
      inversePrimary: blackColor,
      surface: blackColor.withOpacity(0.5),
    ),
  );

  // colors
  static Color whiteColor = Colors.white,
      blackColor = Colors.black,
      lightBackgroundColor = const Color(0xFFF1F1F8),
      blackBackgroundColor = const Color(0xFF333333);
}

const Color primaryColor = Color(0xFF54B435);
const Color secondaryColor = Color(0xFF82CD47);
const Color whiteColor = Colors.white;
const Color greyColor = Color(0xFFA8A8A8);
const Color lightGreyColor = Color(0xFFC8C6C6);
const Color lightColor = Color(0xFFF0E5CF);
const Color tealColor = Color(0xFF46A0AE);
const Color tealBrightColor = Color(0xFF00FFCB);
const Color redColor = Color(0xFFF96666);
const Color accentColor = Color(0xFFA4BE7B);
const Color backgroundColor = Color(0xFFF1F1F8);
const Color blackColor = Colors.black;
const Color facebookColor = Color(0xFF4267B2);
const Color googleColor = Color(0xFFDD4B39);

const primaryGradient = LinearGradient(
  colors: <Color>[tealColor, tealBrightColor],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
final redGradient = LinearGradient(
  colors: <Color>[primaryColor, Colors.red[500]!],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
final greenGradient = LinearGradient(
  colors: <Color>[primaryColor, Colors.green[500]!],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
Shader textGradient = const LinearGradient(
  colors: <Color>[tealColor, tealBrightColor],
).createShader(
  const Rect.fromLTWH(
    50.0,
    50.0,
    200.0,
    200.0,
  ),
);

TextStyle adaptiveTextFont({
  bool applyOpacity = false,
}) {
  // Base text style using Poppins font
  TextStyle baseStyle = GoogleFonts.poppins();

  // Apply opacity if the parameter is true
  if (applyOpacity) {
    baseStyle = baseStyle.copyWith(
      color: colorScheme(context: Get.context).primary.withOpacity(
            0.7,
          ),
    );
  }

  return baseStyle;
}

TextStyle primaryTextFont = const TextStyle(
  color: primaryColor,
);

TextStyle secondaryTextFont = const TextStyle(
  color: secondaryColor,
);

TextStyle arabicTextFont = const TextStyle(
  fontFamily: 'Al-Qalam-Quran-Majeed',
  fontSize: 22,
);

TextStyle redTextFont = const TextStyle(
  color: redColor,
);

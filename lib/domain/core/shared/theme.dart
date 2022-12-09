part of 'shared.dart';

const Color primaryColor = Color(0xFF285430);
const Color secondaryColor = Color(0xFF5F8D4E);
const Color lightGreyColor = Color(0xFFC8C6C6);
const Color lightColor = Color(0xFFF0E5CF);
const Color tealColor = Color(0xFF46A0AE);
const Color tealBrightColor = Color(0xFF00FFCB);
const Color accentColor = Color(0xFFA4BE7B);
const Color backgroundColor = Color(0xFFE5D9B6);
const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;

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

TextStyle greyTextFont = const TextStyle(
  color: lightGreyColor,
  fontWeight: FontWeight.w500,
);

TextStyle blackTextFont = const TextStyle(
  color: blackColor,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

TextStyle primaryTextFont = const TextStyle(
  color: primaryColor,
);

TextStyle secondaryTextFont = const TextStyle(
  color: secondaryColor,
);

TextStyle accentTextFont = const TextStyle(
  color: accentColor,
);

TextStyle whiteTextFont = const TextStyle(
  color: whiteColor,
  fontWeight: FontWeight.w500,
);

TextStyle lightWhiteTextFont = const TextStyle(
  color: Colors.white70,
  fontSize: 9,
  fontWeight: FontWeight.w300,
);

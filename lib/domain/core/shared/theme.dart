part of 'shared.dart';

const Color primaryColor = Color(0xFF4B6587);
const Color secondaryColor = Color(0xFF8B94BC);
const Color lightGreyColor = Color(0xFFC8C6C6);
const Color lightColor = Color(0xFFF0E5CF);
const Color tealColor = Color(0xFF46A0AE);
const Color tealBrightColor = Color(0xFF00FFCB);
const Color accentColor = Color(0xFF1C2341);

const Color backgroundColor = Color(0xFFF9F3DF);
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
  color: primaryColor,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle blackTextFont = const TextStyle(
  color: blackColor,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle tealTextFont = const TextStyle(
  color: tealColor,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle whiteTextFont = const TextStyle(
  color: whiteColor,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle lightWhiteTextFont = const TextStyle(
  color: Colors.white70,
  fontSize: 9,
  fontWeight: FontWeight.w300,
);

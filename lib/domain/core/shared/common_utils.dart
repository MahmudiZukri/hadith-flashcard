part of 'shared.dart';

class CommonUtils {
  // static final RegExp _phoneRegExp = RegExp(r'^(?:[+0])?[0-9]{8,15}$');

  static String dateFormat(DateTime date, String pattern) {
    final DateFormat format = DateFormat(
      pattern,
    );
    final String sDate = format.format(date.toLocal());
    return sDate;
  }

  static List<String> gender(int gender) {
    return gender == 1
        ? ['Male', 'Cowok', 'Pria', 'Laki-laki']
        : ['Female', 'Cewek', 'Wanita', 'Perempuan'];
  }

  static Either<bool, bool> containsValue(
      Map<String, dynamic> map, String comparedTo) {
    bool isContains = false;
    map.forEach((key, value) {
      if (!isContains) {
        isContains =
            value.toString().toLowerCase().contains(comparedTo.toLowerCase());
      }
    });
    return isContains ? right(true) : left(false);
  }

  static String currencyFormat(num amount, {bool showSymbol = true}) {
    final NumberFormat format = NumberFormat("#,##0", "id_ID");
    String result = '';
    if (showSymbol) result += 'Rp';
    return result + format.format(amount);
  }

  static String firebaseMessageSplit({
    required String message,
  }) {
    return message.split('] ')[1].split(')')[0];
  }

  static String replaceFarsiNumber(String input) {
    const num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['۰', '۱', '۲', '۳', '٤', '۵', '٦', '۷', '۸', '۹'];

    for (int i = 0; i < num.length; i++) {
      input = input.replaceAll(
        num[i],
        farsi[i],
      );
    }
    return input;
  }

  static int daysBetween({
    required DateTime from,
    required DateTime to,
  }) {
    from = DateTime(
      from.year,
      from.month,
      from.day,
    );
    to = DateTime(
      to.year,
      to.month,
      to.day,
    );

    return ((to.difference(from).inHours / 24)).round();
  }

  static Future<bool> checkInternetConnection(Connectivity connectivity) async {
    final result = await connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  static List<HadithFlashcard> removeDuplicatesNarrator(
      IList<HadithFlashcard> flashcards) {
    Set<PersonName> uniqueNarratorNames = <PersonName>{};
    List<HadithFlashcard> filteredList = [];

    for (var flashcard in flashcards) {
      if (!uniqueNarratorNames.contains(flashcard.hadithNarratorName)) {
        uniqueNarratorNames.add(flashcard.hadithNarratorName);
        filteredList.add(flashcard);
      }
    }

    return filteredList;
  }

  static openCustomDialog({
    required BuildContext context,
    required Widget title,
    required Widget content,
    List<Widget>? actions,
  }) {
    showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
              backgroundColor: colorScheme().inversePrimary,
              shape: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(
                  16.0,
                ),
              ),
              title: title,
              titleTextStyle: adaptiveTextFont.copyWith(
                fontSize: 20.0,
              ),
              content: content,
              actions: actions,
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      barrierLabel: '',
      context: context,
      pageBuilder: (context, animation1, animation2) => const SizedBox(),
    );
  }

  static SnackbarController customSnackbar({
    required bool isSuccess,
    required String message,
    Function()? actionOnTap,
    String? actionText,
  }) {
    return Get.snackbar(
      '',
      '',
      colorText: whiteColor,
      shouldIconPulse: true,
      titleText: const SizedBox(),
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 30),
      icon: Icon(
        isSuccess ? Icons.check_circle : Icons.cancel,
        color: isSuccess ? primaryColor : redColor,
      ),
      backgroundColor: colorScheme().inversePrimary.withOpacity(
            0.7,
          ),
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              message,
              style: TextStyle(
                color: isSuccess ? primaryColor : redColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (actionOnTap != null && actionText != null)
            Flexible(
              child: CustomElevatedButtonWidget(
                text: actionText,
                backgroundColor: isSuccess
                    ? primaryColor.withOpacity(0.8)
                    : redColor.withOpacity(0.8),
                textStyle: TextStyle(
                  color: colorScheme().inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
                onPressed: actionOnTap,
              ),
            )
        ],
      ),
    );
  }

  //comment for now

  //   static final RegExp _emailRegExp = RegExp(
  //   r'^([A-Z|a-z|0-9](\.|_){0,1})+[A-Z|a-z|0-9]\@([A-Z|a-z|0-9])+((\.){0,1}[A-Z|a-z|0-9]){2}\.[a-z]{2,3}$',
  // );

  // static final RegExp _passwordRegExp = RegExp(
  //   r'^((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,64})$',
  // );

  // static bool validateEmail(String value) {
  //   return _emailRegExp.hasMatch(value);
  // }

  // static bool validatePassword(String password) {
  //   return _passwordRegExp.hasMatch(password);
  // }

  // static bool validatePhone(String phone) {
  //   return _phoneRegExp.hasMatch(phone);
  // }

  // static String replaceSpace(String value) {
  //   return value.replaceAll(' ', '%20');
  // }

  // static Either<String, String> getInitials(String value) {
  //   if (value.isNotEmpty) {
  //     return right(value
  //         .trim()
  //         .split(' ')
  //         .map((e) => e[0])
  //         .take(2)
  //         .join()
  //         .toUpperCase());
  //   }
  //   return left('');
  // }

  // static Future<CroppedFile?> cropImage({required String path}) async =>
  //     ImageCropper().cropImage(
  //       sourcePath: path,
  //       cropStyle: CropStyle.circle,
  //       uiSettings: [
  //         IOSUiSettings(
  //           title: 'Crop Image',
  //           aspectRatioPickerButtonHidden: true,
  //         ),
  //         AndroidUiSettings(
  //           toolbarTitle: 'Crop Image',
  //           toolbarColor: ColorPalette.cvsayaPrimary,
  //           toolbarWidgetColor: Colors.white,
  //           initAspectRatio: CropAspectRatioPreset.square,
  //           lockAspectRatio: true,
  //         ),
  //       ],
  //     );

  // static Future<bool> requestPermission({
  //   required Permission permission,
  //   bool withOpenAppSettings = false,
  // }) async {
  //   final _result = await permission.request();
  //   switch (_result) {
  //     case PermissionStatus.granted:
  //     case PermissionStatus.limited:
  //       return true;
  //     case PermissionStatus.denied:
  //     case PermissionStatus.restricted:
  //       return false;
  //     case PermissionStatus.permanentlyDenied:
  //       if (withOpenAppSettings) {
  //         openAppSettings();
  //       }
  //       return false;
  //   }
  // }

  // static String formatDistance(double metre) {
  //   var distance = metre;
  //   var unit = 'm';
  //   if (metre > 1000) {
  //     distance = distance / 1000;
  //     unit = 'km';
  //   }
  //   return "${distance.toStringAsFixed(1)} $unit";
  // }

  // static String formatDuration(int interval) {
  //   final hours = (interval / 3600).floor();
  //   final minutes = (interval % 3600 / 60).floor();
  //   final seconds = interval % 60;
  //   return "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
  // }

  // static const String defaultCountryCallingCode = '+62';

  // static String getUUID() {
  //   const uuid = Uuid();
  //   return uuid.v1();
  // }

  // static DateTime firstDateOfWeek(DateTime current) {
  //   switch (current.weekday) {
  //     case DateTime.tuesday:
  //       return current.subtract(const Duration(days: 1));
  //     case DateTime.wednesday:
  //       return current.subtract(const Duration(days: 2));
  //     case DateTime.thursday:
  //       return current.subtract(const Duration(days: 3));
  //     case DateTime.friday:
  //       return current.subtract(const Duration(days: 4));
  //     case DateTime.saturday:
  //       return current.subtract(const Duration(days: 5));
  //     case DateTime.sunday:
  //       return current.subtract(const Duration(days: 6));
  //     default:
  //       return current;
  //   }
  // }

  // static DateTime lastDateOfWeek(DateTime current) {
  //   switch (current.weekday) {
  //     case DateTime.saturday:
  //       return current.add(const Duration(days: 1));
  //     case DateTime.friday:
  //       return current.add(const Duration(days: 2));
  //     case DateTime.thursday:
  //       return current.add(const Duration(days: 3));
  //     case DateTime.wednesday:
  //       return current.add(const Duration(days: 4));
  //     case DateTime.tuesday:
  //       return current.add(const Duration(days: 5));
  //     case DateTime.monday:
  //       return current.add(const Duration(days: 6));
  //     default:
  //       return current;
  //   }
  // }

  // static DateTime firstDateOfMonth(DateTime dateTime) {
  //   return DateTime(dateTime.year, dateTime.month);
  // }

  // static DateTime lastDateOfMonth(DateTime dateTime) {
  //   return DateTime(dateTime.year, dateTime.month + 1)
  //       .subtract(const Duration(days: 1));
  // }

  // static String getRandomString(int length) {
  //   const chars =
  //       'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  //   final Random _rnd = Random();
  //   return String.fromCharCodes(Iterable.generate(
  //       length, (_) => chars.codeUnitAt(_rnd.nextInt(chars.length))));
  // }

  // static Future<void> launchUrl(String? url) async {
  //   if (url != null) {
  //     await launch(url);
  //   } else {
  //     throw 'No url provided';
  //   }
  // }
}

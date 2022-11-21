// import 'dart:math';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:intl/intl.dart';
// import 'package:kada/presentation/core/color_palette.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:uuid/uuid.dart';

import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';

class CommonUtils {
  static final RegExp _emailRegExp = RegExp(
    r'^([A-Z|a-z|0-9](\.|_){0,1})+[A-Z|a-z|0-9]\@([A-Z|a-z|0-9])+((\.){0,1}[A-Z|a-z|0-9]){2}\.[a-z]{2,3}$',
  );

  static final RegExp _passwordRegExp = RegExp(
    r'^((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,64})$',
  );

  static final RegExp _phoneRegExp = RegExp(r'^(?:[+0])?[0-9]{8,15}$');

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

  static bool validateEmail(String value) {
    return _emailRegExp.hasMatch(value);
  }

  static bool validatePassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  static bool validatePhone(String phone) {
    return _phoneRegExp.hasMatch(phone);
  }

  static String replaceSpace(String value) {
    return value.replaceAll(' ', '%20');
  }

  //comment for now

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

  // static Future<bool> checkInternetConnection(Connectivity connectivity) async {
  //   final result = await connectivity.checkConnectivity();
  //   return result != ConnectivityResult.none;
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

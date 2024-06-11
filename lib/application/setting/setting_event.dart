part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.openAppFirstTime() = _OpenAppFirstTime;
  const factory SettingEvent.changeToDarkMode() = _ChangeToDarkMode;
  const factory SettingEvent.updateLocale({
    required String localeStr,
  }) = _UpdateLocale;
}

part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    required bool isDarkMode,
  }) = _SettingState;

  factory SettingState.initial() => const SettingState(
        isDarkMode: false,
      );
}

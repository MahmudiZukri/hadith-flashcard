part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    required ELanguage selectedLang,
  }) = _SettingState;

  factory SettingState.initial() => SettingState(
        selectedLang: ELanguage.indonesia,
      );
}

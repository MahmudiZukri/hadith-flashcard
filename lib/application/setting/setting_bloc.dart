import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/shared/storage.dart';
import 'package:injectable/injectable.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

@injectable
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState.initial()) {
    on<SettingEvent>(
      (event, emit) {
        try {
          event.map(
            openAppFirstTime: (e) {
              OpenedFirstTimeStorage().openApp();
            },
            changeToDarkMode: (_) {
              ThemeStorage().switchTheme();

              emit(
                state.copyWith(
                  isDarkMode: !state.isDarkMode,
                ),
              );
            },
            updateLocale: (e) {
              LocalizationStorage().switchLocale(
                localeStr: e.localeStr,
              );
            },
          );
        } catch (e, stackTrace) {
          debugPrint('❌ CRASH in SettingBloc handling ${event.runtimeType}: $e\n$stackTrace');
        }
      },
    );
  }
}

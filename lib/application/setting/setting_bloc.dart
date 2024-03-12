import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';
import 'package:injectable/injectable.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

@injectable
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState.initial()) {
    on<SettingEvent>(
      (event, emit) {
        event.map(
          changeToDarkMode: (_) {
            ThemeHelper().switchTheme();

            emit(
              state.copyWith(
                isDarkMode: !state.isDarkMode,
              ),
            );
          },
        );
      },
    );
  }
}
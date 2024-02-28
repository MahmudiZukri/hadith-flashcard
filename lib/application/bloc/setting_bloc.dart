import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
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
          changeToDarkMode: (e) {
            Get.changeThemeMode(
              Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
            );

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

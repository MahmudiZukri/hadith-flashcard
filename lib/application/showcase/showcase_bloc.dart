import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:showcaseview/showcaseview.dart';

part 'showcase_event.dart';
part 'showcase_state.dart';
part 'showcase_bloc.freezed.dart';

@injectable
class ShowcaseBloc extends Bloc<ShowcaseEvent, ShowcaseState> {
  ShowcaseBloc()
      : super(
          ShowcaseState.initial(),
        ) {
    on<ShowcaseEvent>(
      (event, emit) async {
        await event.map(
          start: (e) async {
            WidgetsBinding.instance.addPostFrameCallback(
              (_) async {
                ShowCaseWidget.of(e.context).startShowCase(
                  [
                    state.welcomeGlobalKey,
                    state.narratorNavBarGlobalKey,
                    state.reviewNavBarGlobalKey,
                    state.profileNavBarGlobalKey,
                    state.enjoyGlobalKey,
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}

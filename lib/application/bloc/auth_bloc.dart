import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/auth/failures/auth_failures.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map(
          signUp: (e) async {
            final failureOrSuccess = await _authRepository.signUp(
              context: e.context,
              email: e.email.getOrCrash(),
              password: e.password.getOrCrash(),
            );

            emit(
              state.copyWith(
                optionFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}

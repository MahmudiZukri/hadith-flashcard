import 'package:bloc/bloc.dart';
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
          emailChanged: (e) {
            emit(
              state.copyWith(
                email: e.email,
              ),
            );
          },
          passwordChanged: (e) {
            emit(
              state.copyWith(
                password: e.password,
              ),
            );
          },
          signUp: (e) async {
            emit(
              state.copyWith(
                onLoading: true,
              ),
            );

            final failureOrSuccess = await _authRepository.signUp(
              email: state.email.getOrCrash(),
              password: state.password.getOrCrash(),
            );

            emit(
              state.copyWith(
                onLoading: false,
                showMessage: !state.showMessage,
                optionFailureOrSuccess: optionOf(
                  failureOrSuccess,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

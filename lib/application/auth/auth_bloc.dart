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
                email: EmailAddress(e.emailStr),
                optionFailureOrSuccess: none(),
              ),
            );
          },
          passwordChanged: (e) {
            emit(
              state.copyWith(
                password: Password(e.passwordStr),
                optionFailureOrSuccess: none(),
              ),
            );
          },
          signUp: (e) async {
            Either<AuthFailure, Unit>? failureOrSuccess;

            if (state.email.isValid() && state.password.isValid()) {
              emit(
                state.copyWith(
                  onLoading: true,
                  optionFailureOrSuccess: none(),
                ),
              );

              failureOrSuccess = await _authRepository.signUp(
                email: state.email.getOrCrash(),
                password: state.password.getOrCrash(),
              );
            }

            emit(
              state.copyWith(
                onLoading: false,
                showErrorMessages: true,
                showSnackbar: !state.showSnackbar,
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
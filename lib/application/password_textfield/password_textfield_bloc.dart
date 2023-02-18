import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'password_textfield_event.dart';
part 'password_textfield_state.dart';
part 'password_textfield_bloc.freezed.dart';

@injectable
class PasswordTextFieldBloc
    extends Bloc<PasswordTextFieldEvent, PasswordTextFieldState> {
  PasswordTextFieldBloc() : super(PasswordTextFieldState.initial()) {
    on<PasswordTextFieldEvent>(
      (event, emit) {
        event.map(
          signUpTextFieldObsecureChanged: (_) {
            emit(
              state.copyWith(
                isSignUpTextFieldObscure: !state.isSignUpTextFieldObscure,
              ),
            );
          },
          signInTextFieldObsecureChanged: (_) {
            emit(
              state.copyWith(
                isSignInTextFieldObscure: !state.isSignInTextFieldObscure,
              ),
            );
          },
        );
      },
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordState.initial()) {
    on<ForgotPasswordEvent>(
      (event, emit) {
        event.map(
          emailChanged: (e) {
            emit(
              state.copyWith(
                email: EmailAddress(
                  e.emailStr,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

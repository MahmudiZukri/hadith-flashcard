import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordState.initial()) {
    on<ForgotPasswordEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

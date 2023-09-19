import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/hadith_narrator.dart';
import 'package:injectable/injectable.dart';

part 'page_event.dart';
part 'page_state.dart';

@injectable
class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageInitial()) {
    on<GotoSignUpPage>(
      (event, emit) => emit(
        OnSignUpPage(),
      ),
    );
    on<GotoSignInPage>(
      (event, emit) => emit(
        OnSignInPage(),
      ),
    );
    on<GotoHomePage>(
      (event, emit) => emit(
        OnHomePage(
          userID: event.userID,
          pageIndex: event.pageIndex,
        ),
      ),
    );
    on<GotoForgotPasswordPage>(
      (event, emit) => emit(
        OnForgotPasswordPage(),
      ),
    );
    on<GotoCheckEmailPage>(
      (event, emit) => emit(
        OnCheckEmailPage(),
      ),
    );
    on<GotoHadithPage>(
      (event, emit) => emit(
        OnHadithPage(
          userID: event.userID,
          hadithNarrator: event.hadithNarrator,
        ),
      ),
    );
    on<GotoEditProfilePage>(
      (event, emit) => emit(
        OnEditProfilePage(
          userID: event.userID,
        ),
      ),
    );
  }
}

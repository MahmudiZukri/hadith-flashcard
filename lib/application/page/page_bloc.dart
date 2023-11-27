import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/hadith_flashcard.dart';
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
          hadithNumber: event.hadithNumber,
        ),
      ),
    );

    on<GotoMyFlashcardNarratorPage>(
      (event, emit) => emit(
        OnMyFlashcardNarratorPage(
          userID: event.userID,
        ),
      ),
    );

    on<GotoMyFlashcardHadithPage>(
      (event, emit) => emit(
        OnMyFlashcardHadithPage(
          userID: event.userID,
          flashcards: event.flashcards,
        ),
      ),
    );

    on<GotoHelpPage>(
      (event, emit) => emit(
        OnHelpPage(
          userID: event.userID,
        ),
      ),
    );

    on<GotoPrivacyPolicyPage>(
      (event, emit) => emit(
        OnPrivacyPolicyPage(
          userID: event.userID,
        ),
      ),
    );
  }
}

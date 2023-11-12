part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();

  @override
  List<Object> get props => [];
}

class PageInitial extends PageState {}

class OnSignUpPage extends PageState {}

class OnSignInPage extends PageState {}

class OnHomePage extends PageState {
  final UniqueString userID;
  final int pageIndex;

  const OnHomePage({
    required this.userID,
    required this.pageIndex,
  });
}

class OnForgotPasswordPage extends PageState {}

class OnCheckEmailPage extends PageState {}

class OnHadithPage extends PageState {
  final UniqueString userID;
  final HadithNarrator hadithNarrator;

  const OnHadithPage({
    required this.userID,
    required this.hadithNarrator,
  });
}

class OnMyFlashcardNarratorPage extends PageState {
  final UniqueString userID;

  const OnMyFlashcardNarratorPage({
    required this.userID,
  });
}

class OnMyFlashcardHadithPage extends PageState {
  final UniqueString userID;
  final IList<HadithFlashcard> flashcards;

  const OnMyFlashcardHadithPage({
    required this.userID,
    required this.flashcards,
  });
}

class OnHelpPage extends PageState {
  final UniqueString userID;

  const OnHelpPage({
    required this.userID,
  });
}

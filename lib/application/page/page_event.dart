part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GotoSignUpPage extends PageEvent {}

class GotoSignInPage extends PageEvent {}

class GotoHomePage extends PageEvent {
  final UniqueString userID;

  final int pageIndex;

  const GotoHomePage({
    required this.userID,
    required this.pageIndex,
  });
}

class GotoForgotPasswordPage extends PageEvent {}

class GotoCheckEmailPage extends PageEvent {}

class GotoHadithPage extends PageEvent {
  final UniqueString userID;
  final HadithNarrator hadithNarrator;

  const GotoHadithPage({
    required this.userID,
    required this.hadithNarrator,
  });
}

class GotoMyFlashcardPage extends PageEvent {
  final UniqueString userID;

  const GotoMyFlashcardPage({
    required this.userID,
  });
}

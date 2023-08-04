part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GotoSignUpPage extends PageEvent {}

class GotoSignInPage extends PageEvent {}

class GotoHomePage extends PageEvent {
  final int pageIndex;

  const GotoHomePage({
    required this.pageIndex,
  });
}

class GotoForgotPasswordPage extends PageEvent {}

class GotoCheckEmailPage extends PageEvent {}

class GotoHadithPage extends PageEvent {
  final HadithNarrator hadithNarrator;

  const GotoHadithPage({
    required this.hadithNarrator,
  });
}

part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GotoSignUpPage extends PageEvent {}

class GotoSignInPage extends PageEvent {}

class GotoHomePage extends PageEvent {}

class GotoForgotPasswordPage extends PageEvent {}

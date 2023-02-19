part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();

  @override
  List<Object> get props => [];
}

class PageInitial extends PageState {}

class OnSignUpPage extends PageState {}

class OnSignInPage extends PageState {}

class OnHomePage extends PageState {}

class OnForgotPasswordPage extends PageState {}

class OnCheckEmailPage extends PageState {}

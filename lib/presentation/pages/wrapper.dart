part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    super.key,
    required this.userID,
  });

  final UniqueString? userID;

  @override
  Widget build(BuildContext context) {
    if (userID == null) {
      if (prevPageEvent is! GotoSignInPage) {
        prevPageEvent = GotoSignInPage();
        context.read<PageBloc>().add(prevPageEvent!);
      }
    } else {
      if (prevPageEvent is! GotoHomePage) {
        context.read<UserBloc>().add(
              UserEvent.loadUser(
                userID: userID!,
              ),
            );

        prevPageEvent = GotoHomePage();
        context.read<PageBloc>().add(prevPageEvent!);
      }
    }
    return BlocBuilder<PageBloc, PageState>(
      builder: (_, pageState) {
        return AnimatedSwitcher(
          switchOutCurve: const Threshold(0),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.25),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
          duration: defaultDuration(),
          child: pageTransition(
            pageState: pageState,
          ),
        );
      },
    );
  }
}

Widget pageTransition({required PageState pageState}) {
  if (pageState is OnSignUpPage) {
    return const SignUpPage();
  } else if (pageState is OnSignInPage) {
    return const SignInPage();
  } else if (pageState is OnHomePage) {
    return const HomePage();
  } else if (pageState is OnForgotPasswordPage) {
    return const ForgotPasswordPage();
  } else if (pageState is OnCheckEmailPage) {
    return const CheckEmailPage();
  } else {
    return const SignInPage();
  }
}

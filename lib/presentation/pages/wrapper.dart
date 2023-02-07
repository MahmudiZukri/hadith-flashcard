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
        if (pageState is OnSignUpPage) {
          return const SignUpPage();
        } else if (pageState is OnSignInPage) {
          return const SignInPage();
        } else if (pageState is OnHomePage) {
          return const HomePage();
        } else {
          return const SignInPage();
        }
      },
    );
  }
}

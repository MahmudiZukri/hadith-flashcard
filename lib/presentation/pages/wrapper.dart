part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    super.key,
    required this.user,
  });

  final auth.User? user;

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      if (prevPageEvent is! GotoSignInPage) {
        prevPageEvent = GotoSignInPage();
        context.read<PageBloc>().add(prevPageEvent!);
      }
    } else {
      if (prevPageEvent is! GotoHomePage) {
        context.read<UserBloc>().add(
              UserEvent.loadUser(
                userID: UniqueString.fromUniqueString(user!.uid),
              ),
            );

        prevPageEvent = GotoHomePage();
        context.read<PageBloc>().add(prevPageEvent!);
      }
    }
    return BlocBuilder<PageBloc, PageState>(
      builder: (_, pageState) {
        return pageState is OnSignUpPage
            ? const SignUpPage()
            : pageState is OnSignInPage
                ? const SignInPage()
                : const HomePage();
      },
    );
  }
}

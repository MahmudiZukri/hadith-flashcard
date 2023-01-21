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
      if (prevPageEvent is! GotoSignUpPage) {
        prevPageEvent = GotoSignUpPage();
        BlocProvider.of<PageBloc>(context).add(prevPageEvent!);
      }
    } else {
      if (prevPageEvent is! GotoHomePage) {
        // BlocProvider.of<UserBloc>(context).add(LoadUser(user!.uid));
        // BlocProvider.of<CardBloc>(context).add(GetCard(user!.uid));

        prevPageEvent = GotoHomePage();
        // context.read()<PageBloc>().add(prevPageEvent);
        BlocProvider.of<PageBloc>(context).add(prevPageEvent!);
      }
    }
    return Container();
  }
}

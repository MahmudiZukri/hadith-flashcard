part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Home',
            ),
            BlocBuilder<UserBloc, UserState>(
              builder: (_, state) => Column(
                children: [
                  Text(state.user.toString()),
                  Text(
                    state.user?.name.getOrCrash() ?? 'kosong',
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                IAuthRepository.auth.signOut();
              },
              child: const Text(
                'sign out',
              ),
            ),
            // TextButton(
            //   onPressed: () {
            //     context.go('/signup');
            //   },
            //   child: const Text(
            //     'sign up',
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

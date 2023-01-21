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
          'asd',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Home',
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

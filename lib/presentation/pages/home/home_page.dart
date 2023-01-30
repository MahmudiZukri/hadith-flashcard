part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: const [
              Text('Sign Out'),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Home Page',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (_, state) => state.user == null
              ? const Text('Loading..')
              : Column(
                  children: [
                    Text(
                      state.user!.name.getOrCrash(),
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              const AuthEvent.signOut(),
                            );
                      },
                      child: const Text(
                        'Sign Out',
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

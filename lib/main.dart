import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:hadith_flashcard/injection.dart';
import 'package:hadith_flashcard/presentation/pages/pages.dart';
import 'package:injectable/injectable.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(
    Environment.dev,
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<NavigatorState>? navigatorKey;

    return StreamBuilder<User?>(
      stream: IAuthRepository.userStream,
      initialData: FirebaseAuth.instance.currentUser,
      builder: (context, snapshot) {
        User? user = snapshot.data;

        final router = GoRouter(
          navigatorKey: navigatorKey,
          routes: [
            GoRoute(
              path: '/signup',
              name: 'signup',
              builder: (context, state) => const SignUpPage(),
            ),
            GoRoute(
              path: '/signin',
              name: 'signin',
              builder: (context, state) => const SignInPage(),
            ),
            GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) => const HomePage(),
            ),
          ],
          redirect: (context, state) {
            if (user == null) {
              return '/signin';
            } else {
              return '/home';
            }
          },
          initialLocation: '/signin',
          debugLogDiagnostics: true,
        );

        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        );
      },
    );
  }
}

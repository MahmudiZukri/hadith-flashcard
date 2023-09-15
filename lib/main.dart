import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadith_flashcard/application/auth/auth_bloc.dart';
import 'package:hadith_flashcard/application/page/page_bloc.dart';
import 'package:hadith_flashcard/application/user/user_bloc.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/firebase_options.dart';
import 'package:hadith_flashcard/injection.dart';
import 'package:hadith_flashcard/presentation/pages/pages.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(
    Environment.prod,
  );
  await Firebase.initializeApp(
    // TODO: find out later
    // options: const FirebaseOptions(
    //   apiKey: 'AIzaSyDY_bUSdCWDf3idRHStG1YfPPo5owesg48',
    //   appId: '1:988688359058:android:09e23bc6cab1f3fc58d04b',
    //   messagingSenderId: '988688359058',
    //   projectId: 'hadith-flashcard',
    // ),
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('id'),
        Locale('en', 'US'),
      ],
      path: 'assets/localization',
      startLocale: const Locale('id'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider<UserBloc>(
          create: (context) => getIt<UserBloc>(),
        ),
        BlocProvider<PageBloc>(
          create: (context) => getIt<PageBloc>(),
        ),
      ],
      child: StreamBuilder(
        stream: IAuthRepository.userStream,
        initialData: FirebaseAuth.instance.currentUser,
        builder: (context, AsyncSnapshot<User?> snapshot) {
          User? user = snapshot.data;

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            title: 'Hadith Flashcard',
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(),
            ),
            home: Wrapper(
              userID:
                  user != null ? UniqueString.fromUniqueString(user.uid) : null,
            ),
          );
        },
      ),
    );
  }
}

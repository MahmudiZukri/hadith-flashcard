import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hadith_flashcard/application/auth/auth_bloc.dart';
import 'package:hadith_flashcard/application/remote_config/remote_config_bloc.dart';
import 'package:hadith_flashcard/application/setting/setting_bloc.dart';
import 'package:hadith_flashcard/application/user/user_bloc.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';
import 'package:hadith_flashcard/injection.dart';
import 'package:hadith_flashcard/localization/localization.dart';
import 'package:hadith_flashcard/presentation/pages/pages.dart';
import 'package:hadith_flashcard/simple_bloc_observer.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  await GetStorage.init();
  configureInjection(Environment.prod);
  await Firebase.initializeApp(
    // TODO: find out later
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDY_bUSdCWDf3idRHStG1YfPPo5owesg48',
      appId: '1:988688359058:android:09e23bc6cab1f3fc58d04b',
      messagingSenderId: '988688359058',
      projectId: 'hadith-flashcard',
    ),
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = getIt<SimpleBlocObserver>();

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider<UserBloc>(
          create: (context) => getIt<UserBloc>(),
        ),
        BlocProvider<SettingBloc>(
          create: (context) => getIt<SettingBloc>(),
        ),
        BlocProvider<RemoteConfigBloc>(
          create: (context) => getIt<RemoteConfigBloc>()
            ..add(
              const RemoteConfigEvent.getUpdateVersionInfo(),
            )
            ..add(
              const RemoteConfigEvent.getAdsStatus(),
            )
            ..add(
              const RemoteConfigEvent.getPackageInfo(),
            ),
        ),
      ],
      child: StreamBuilder(
        stream: IAuthRepository.userStream,
        initialData: FirebaseAuth.instance.currentUser,
        builder: (context, AsyncSnapshot<User?> snapshot) {
          User? user = snapshot.data;

          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            translations: Localization(),
            locale: const Locale('id'),
            title: 'Hadith Flashcard',
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            themeMode: ThemeHelper().theme,
            home: user == null
                ? const SignInPage()
                : HomePage(
                    userID: UniqueString.fromUniqueString(user.uid),
                    pageIndex: 1,
                  ),
          );
        },
      ),
    );
  }
}

// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i627;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hadith_flashcard/application/ad/ad_bloc.dart' as _i833;
import 'package:hadith_flashcard/application/auth/auth_bloc.dart' as _i825;
import 'package:hadith_flashcard/application/forgot_password/forgot_password_bloc.dart'
    as _i897;
import 'package:hadith_flashcard/application/hadith_flashcard/hadith_flashcard_bloc.dart'
    as _i222;
import 'package:hadith_flashcard/application/hadith_narrator/hadith_narrator_bloc.dart'
    as _i653;
import 'package:hadith_flashcard/application/page_view/page_view_bloc.dart'
    as _i730;
import 'package:hadith_flashcard/application/password_textfield/password_textfield_bloc.dart'
    as _i743;
import 'package:hadith_flashcard/application/remote_config/remote_config_bloc.dart'
    as _i165;
import 'package:hadith_flashcard/application/setting/setting_bloc.dart'
    as _i175;
import 'package:hadith_flashcard/application/showcase/showcase_bloc.dart'
    as _i689;
import 'package:hadith_flashcard/application/user/user_bloc.dart' as _i426;
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart'
    as _i701;
import 'package:hadith_flashcard/domain/core/interfaces/i_network_service.dart'
    as _i0;
import 'package:hadith_flashcard/domain/hadith_flashcard/interfaces/i_hadith_flashcard_repository.dart'
    as _i150;
import 'package:hadith_flashcard/domain/hadith_narrator/interfaces/i_hadith_narrator_repository.dart'
    as _i533;
import 'package:hadith_flashcard/domain/remote_config/interfaces/i_remote_config_repository.dart'
    as _i115;
import 'package:hadith_flashcard/infrastructure/auth/auth_repository.dart'
    as _i503;
import 'package:hadith_flashcard/infrastructure/core/configs/env.dart' as _i961;
import 'package:hadith_flashcard/infrastructure/core/register_modules.dart'
    as _i600;
import 'package:hadith_flashcard/infrastructure/remote_config/remote_config_repository.dart'
    as _i834;
import 'package:hadith_flashcard/infrastructure/repositories.dart' as _i967;
import 'package:hadith_flashcard/simple_bloc_observer.dart' as _i678;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i833.AdBloc>(() => _i833.AdBloc());
    gh.factory<_i743.PasswordTextFieldBloc>(
        () => _i743.PasswordTextFieldBloc());
    gh.factory<_i897.ForgotPasswordBloc>(() => _i897.ForgotPasswordBloc());
    gh.factory<_i426.UserBloc>(() => _i426.UserBloc());
    gh.factory<_i730.PageViewBloc>(() => _i730.PageViewBloc());
    gh.factory<_i175.SettingBloc>(() => _i175.SettingBloc());
    gh.factory<_i689.ShowcaseBloc>(() => _i689.ShowcaseBloc());
    gh.lazySingleton<_i974.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i627.FirebaseRemoteConfig>(
        () => registerModule.firebaseRemoteConfig);
    gh.factory<_i678.SimpleBlocObserver>(
        () => _i678.SimpleBlocObserver(gh<_i974.Logger>()));
    gh.lazySingleton<_i150.IHadithFlashcardRepository>(
        () => _i967.HadithFlashcardRepository());
    gh.lazySingleton<_i701.IAuthRepository>(() => _i503.AuthRepository());
    gh.lazySingleton<_i115.IRemoteConfigRepository>(
        () => _i834.RemoteConfigRepository());
    gh.factory<_i222.HadithFlashcardBloc>(() =>
        _i222.HadithFlashcardBloc(gh<_i150.IHadithFlashcardRepository>()));
    gh.factory<_i961.Env>(
      () => _i961.EnvProd(),
      registerFor: {_prod},
    );
    await gh.factoryAsync<_i0.INetworkService>(
      () => registerModule.networkHadithFlashcard(env: gh<_i961.Env>()),
      instanceName: 'network-hadith-flashcard',
      preResolve: true,
    );
    gh.factory<_i165.RemoteConfigBloc>(
        () => _i165.RemoteConfigBloc(gh<_i115.IRemoteConfigRepository>()));
    gh.lazySingleton<_i533.IHadithNarratorRepository>(() =>
        _i967.HadithNarratorRepository(
            gh<_i0.INetworkService>(instanceName: 'network-hadith-flashcard')));
    gh.factory<_i825.AuthBloc>(
        () => _i825.AuthBloc(gh<_i701.IAuthRepository>()));
    gh.factory<_i653.HadithNarratorBloc>(
        () => _i653.HadithNarratorBloc(gh<_i533.IHadithNarratorRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i600.RegisterModule {}

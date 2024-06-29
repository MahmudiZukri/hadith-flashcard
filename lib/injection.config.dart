// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hadith_flashcard/application/ad/ad_bloc.dart' as _i3;
import 'package:hadith_flashcard/application/auth/auth_bloc.dart' as _i24;
import 'package:hadith_flashcard/application/forgot_password/forgot_password_bloc.dart'
    as _i5;
import 'package:hadith_flashcard/application/hadith_flashcard/hadith_flashcard_bloc.dart'
    as _i19;
import 'package:hadith_flashcard/application/hadith_narrator/hadith_narrator_bloc.dart'
    as _i25;
import 'package:hadith_flashcard/application/page_view/page_view_bloc.dart'
    as _i7;
import 'package:hadith_flashcard/application/password_textfield/password_textfield_bloc.dart'
    as _i4;
import 'package:hadith_flashcard/application/remote_config/remote_config_bloc.dart'
    as _i22;
import 'package:hadith_flashcard/application/setting/setting_bloc.dart' as _i8;
import 'package:hadith_flashcard/application/showcase/showcase_bloc.dart'
    as _i9;
import 'package:hadith_flashcard/application/user/user_bloc.dart' as _i6;
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart'
    as _i15;
import 'package:hadith_flashcard/domain/core/interfaces/i_network_service.dart'
    as _i21;
import 'package:hadith_flashcard/domain/hadith_flashcard/interfaces/i_hadith_flashcard_repository.dart'
    as _i13;
import 'package:hadith_flashcard/domain/hadith_narrator/interfaces/i_hadith_narrator_repository.dart'
    as _i23;
import 'package:hadith_flashcard/domain/remote_config/interfaces/i_remote_config_repository.dart'
    as _i17;
import 'package:hadith_flashcard/infrastructure/auth/auth_repository.dart'
    as _i16;
import 'package:hadith_flashcard/infrastructure/core/configs/env.dart' as _i20;
import 'package:hadith_flashcard/infrastructure/core/register_modules.dart'
    as _i26;
import 'package:hadith_flashcard/infrastructure/remote_config/remote_config_repository.dart'
    as _i18;
import 'package:hadith_flashcard/infrastructure/repositories.dart' as _i14;
import 'package:hadith_flashcard/simple_bloc_observer.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AdBloc>(() => _i3.AdBloc());
    gh.factory<_i4.PasswordTextFieldBloc>(() => _i4.PasswordTextFieldBloc());
    gh.factory<_i5.ForgotPasswordBloc>(() => _i5.ForgotPasswordBloc());
    gh.factory<_i6.UserBloc>(() => _i6.UserBloc());
    gh.factory<_i7.PageViewBloc>(() => _i7.PageViewBloc());
    gh.factory<_i8.SettingBloc>(() => _i8.SettingBloc());
    gh.factory<_i9.ShowcaseBloc>(() => _i9.ShowcaseBloc());
    gh.lazySingleton<_i10.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i11.FirebaseRemoteConfig>(
        () => registerModule.firebaseRemoteConfig);
    gh.factory<_i12.SimpleBlocObserver>(
        () => _i12.SimpleBlocObserver(gh<_i10.Logger>()));
    gh.lazySingleton<_i13.IHadithFlashcardRepository>(
        () => _i14.HadithFlashcardRepository());
    gh.lazySingleton<_i15.IAuthRepository>(() => _i16.AuthRepository());
    gh.lazySingleton<_i17.IRemoteConfigRepository>(
        () => _i18.RemoteConfigRepository());
    gh.factory<_i19.HadithFlashcardBloc>(
        () => _i19.HadithFlashcardBloc(gh<_i13.IHadithFlashcardRepository>()));
    gh.factory<_i20.Env>(
      () => _i20.EnvProd(),
      registerFor: {_prod},
    );
    await gh.factoryAsync<_i21.INetworkService>(
      () => registerModule.networkHadithFlashcard(env: gh<_i20.Env>()),
      instanceName: 'network-hadith-flashcard',
      preResolve: true,
    );
    gh.factory<_i22.RemoteConfigBloc>(
        () => _i22.RemoteConfigBloc(gh<_i17.IRemoteConfigRepository>()));
    gh.lazySingleton<_i23.IHadithNarratorRepository>(() =>
        _i14.HadithNarratorRepository(gh<_i21.INetworkService>(
            instanceName: 'network-hadith-flashcard')));
    gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(gh<_i15.IAuthRepository>()));
    gh.factory<_i25.HadithNarratorBloc>(
        () => _i25.HadithNarratorBloc(gh<_i23.IHadithNarratorRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i26.RegisterModule {}

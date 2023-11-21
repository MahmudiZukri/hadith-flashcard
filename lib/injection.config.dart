// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hadith_flashcard/application/auth/auth_bloc.dart' as _i18;
import 'package:hadith_flashcard/application/forgot_password/forgot_password_bloc.dart'
    as _i5;
import 'package:hadith_flashcard/application/hadith_flashcard/hadith_flashcard_bloc.dart'
    as _i19;
import 'package:hadith_flashcard/application/hadith_narrator/hadith_narrator_bloc.dart'
    as _i21;
import 'package:hadith_flashcard/application/page/page_bloc.dart' as _i12;
import 'package:hadith_flashcard/application/page_view/page_view_bloc.dart'
    as _i13;
import 'package:hadith_flashcard/application/password_textfield/password_textfield_bloc.dart'
    as _i14;
import 'package:hadith_flashcard/application/setting/setting_bloc.dart' as _i15;
import 'package:hadith_flashcard/application/user/user_bloc.dart' as _i17;
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart'
    as _i6;
import 'package:hadith_flashcard/domain/core/interfaces/i_network_service.dart'
    as _i10;
import 'package:hadith_flashcard/domain/hadith_flashcard/interfaces/i_hadith_flashcard_repository.dart'
    as _i8;
import 'package:hadith_flashcard/domain/hadith_narrator/interfaces/i_hadith_narrator_repository.dart'
    as _i20;
import 'package:hadith_flashcard/infrastructure/auth/auth_repository.dart'
    as _i7;
import 'package:hadith_flashcard/infrastructure/core/configs/env.dart' as _i3;
import 'package:hadith_flashcard/infrastructure/core/register_module.dart'
    as _i22;
import 'package:hadith_flashcard/infrastructure/repositories.dart' as _i9;
import 'package:hadith_flashcard/simple_bloc_observer.dart' as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

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
    gh.factory<_i3.Env>(
      () => _i3.EnvProd(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.FirebaseRemoteConfig>(
        () => registerModule.firebaseRemoteConfig);
    gh.factory<_i5.ForgotPasswordBloc>(() => _i5.ForgotPasswordBloc());
    gh.lazySingleton<_i6.IAuthRepository>(() => _i7.AuthRepository());
    gh.lazySingleton<_i8.IHadithFlashcardRepository>(
        () => _i9.HadithFlashcardRepository());
    await gh.factoryAsync<_i10.INetworkService>(
      () => registerModule.networkHadithFlashcard(env: gh<_i3.Env>()),
      instanceName: 'network-hadith-flashcard',
      preResolve: true,
    );
    gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
    gh.factory<_i12.PageBloc>(() => _i12.PageBloc());
    gh.factory<_i13.PageViewBloc>(() => _i13.PageViewBloc());
    gh.factory<_i14.PasswordTextFieldBloc>(() => _i14.PasswordTextFieldBloc());
    gh.factory<_i15.SettingBloc>(() => _i15.SettingBloc());
    gh.factory<_i16.SimpleBlocObserver>(
        () => _i16.SimpleBlocObserver(gh<_i11.Logger>()));
    gh.factory<_i17.UserBloc>(() => _i17.UserBloc());
    gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(gh<_i6.IAuthRepository>()));
    gh.factory<_i19.HadithFlashcardBloc>(
        () => _i19.HadithFlashcardBloc(gh<_i8.IHadithFlashcardRepository>()));
    gh.lazySingleton<_i20.IHadithNarratorRepository>(() =>
        _i9.HadithNarratorRepository(gh<_i10.INetworkService>(
            instanceName: 'network-hadith-flashcard')));
    gh.factory<_i21.HadithNarratorBloc>(
        () => _i21.HadithNarratorBloc(gh<_i20.IHadithNarratorRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i22.RegisterModule {}

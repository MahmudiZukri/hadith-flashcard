// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i13;
import 'application/forgot_password/forgot_password_bloc.dart' as _i3;
import 'application/hadith_narrator/hadith_narrator_bloc.dart' as _i14;
import 'application/page/page_bloc.dart' as _i9;
import 'application/page_view/page_view_bloc.dart' as _i10;
import 'application/password_textfield/password_textfield_bloc.dart' as _i11;
import 'application/user/user_bloc.dart' as _i12;
import 'domain/auth/interfaces/i_auth_repository.dart' as _i4;
import 'domain/core/interfaces/i_network_service.dart' as _i8;
import 'domain/hadith_narrator/i_hadith_narrator_repository.dart' as _i6;
import 'infrastructure/auth/auth_repository.dart' as _i5;
import 'infrastructure/hadith_narrator/hadith_narrator_repository.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ForgotPasswordBloc>(() => _i3.ForgotPasswordBloc());
    gh.lazySingleton<_i4.IAuthRepository>(() => _i5.AuthRepository());
    gh.lazySingleton<_i6.IHadithNarratorRepository>(
        () => _i7.HadithNarratorRepository(gh<_i8.INetworkService>()));
    gh.factory<_i9.PageBloc>(() => _i9.PageBloc());
    gh.factory<_i10.PageViewBloc>(() => _i10.PageViewBloc());
    gh.factory<_i11.PasswordTextFieldBloc>(() => _i11.PasswordTextFieldBloc());
    gh.factory<_i12.UserBloc>(() => _i12.UserBloc());
    gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(gh<_i4.IAuthRepository>()));
    gh.factory<_i14.HadithNarratorBloc>(
        () => _i14.HadithNarratorBloc(gh<_i6.IHadithNarratorRepository>()));
    return this;
  }
}

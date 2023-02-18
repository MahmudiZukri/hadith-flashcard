// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i10;
import 'application/forgot_password/forgot_password_bloc.dart' as _i3;
import 'application/page/page_bloc.dart' as _i6;
import 'application/page_view/page_view_bloc.dart' as _i7;
import 'application/password_textfield/password_textfield_bloc.dart' as _i8;
import 'application/user/user_bloc.dart' as _i9;
import 'domain/auth/interfaces/i_auth_repository.dart' as _i4;
import 'infrastructure/auth/auth_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ForgotPasswordBloc>(() => _i3.ForgotPasswordBloc());
  gh.lazySingleton<_i4.IAuthRepository>(() => _i5.AuthRepository());
  gh.factory<_i6.PageBloc>(() => _i6.PageBloc());
  gh.factory<_i7.PageViewBloc>(() => _i7.PageViewBloc());
  gh.factory<_i8.PasswordTextFieldBloc>(() => _i8.PasswordTextFieldBloc());
  gh.factory<_i9.UserBloc>(() => _i9.UserBloc());
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(get<_i4.IAuthRepository>()));
  return get;
}

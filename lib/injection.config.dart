// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i7;
import 'domain/app_user/i_app_user_repository.dart' as _i3;
import 'domain/auth/interfaces/i_auth_repository.dart' as _i5;
import 'infrastructure/app_user/app_user_repository.dart' as _i4;
import 'infrastructure/auth/auth_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.IAppUserRepository>(() => _i4.AppUserRepository());
  gh.lazySingleton<_i5.IAuthRepository>(() => _i6.AuthRepository());
  gh.factory<_i7.AuthBloc>(() => _i7.AuthBloc(get<_i5.IAuthRepository>()));
  return get;
}

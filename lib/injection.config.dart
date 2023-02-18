// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i8;
import 'application/page/page_bloc.dart' as _i5;
import 'application/page_view/page_view_bloc.dart' as _i6;
import 'application/user/user_bloc.dart' as _i7;
import 'domain/auth/interfaces/i_auth_repository.dart' as _i3;
import 'infrastructure/auth/auth_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.IAuthRepository>(() => _i4.AuthRepository());
  gh.factory<_i5.PageBloc>(() => _i5.PageBloc());
  gh.factory<_i6.PageViewBloc>(() => _i6.PageViewBloc());
  gh.factory<_i7.UserBloc>(() => _i7.UserBloc());
  gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(get<_i3.IAuthRepository>()));
  return get;
}

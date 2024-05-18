part of 'remote_config_bloc.dart';

@freezed
class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState({
    required Option<Either<CommonFailures, bool>> optionFailureOrIsEnabledAds,
    required Option<Either<CommonFailures, AppVersionInformation>>
        optionFailureOrAppVersionInformation,
  }) = _RemoteConfigState;

  factory RemoteConfigState.initial() => RemoteConfigState(
        optionFailureOrIsEnabledAds: none(),
        optionFailureOrAppVersionInformation: none(),
      );
}

extension RemoteConfigStateX on RemoteConfigState {
  bool get isEnableAds {
    return optionFailureOrIsEnabledAds.match(
      () => true,
      (t) => t.fold(
        (l) => true,
        (r) => r,
      ),
    );
  }
}

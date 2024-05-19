part of 'remote_config_bloc.dart';

@freezed
class RemoteConfigEvent with _$RemoteConfigEvent {
  const factory RemoteConfigEvent.closeDialog() = _CloseDialog;
  const factory RemoteConfigEvent.getPackageInfo() = _GetPackageInfo;
  const factory RemoteConfigEvent.getUpdateVersionInfo() =
      _GetUpdateVersionInfo;
  const factory RemoteConfigEvent.getAdsStatus() = _GetAdsStatus;
}

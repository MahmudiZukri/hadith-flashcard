part of 'services.dart';

class RemoteConfigServices {
  // Get remote config instance
  static final FirebaseRemoteConfig remoteConfig =
      FirebaseRemoteConfig.instance;

  static Future<RemoteConfigValue> getRemoteConfigValue({
    required String key,
  }) async {
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(minutes: 1),
      ),
    );

    await remoteConfig.fetchAndActivate();

    return remoteConfig.getValue(key);
  }
}

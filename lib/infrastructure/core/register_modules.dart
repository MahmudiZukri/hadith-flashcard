import 'dart:io';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:hadith_flashcard/domain/core/interfaces/i_network_service.dart';
import 'package:hadith_flashcard/infrastructure/core/configs/env.dart';
import 'package:hadith_flashcard/infrastructure/core/services/network_service_type.dart';

import 'services/services.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  FirebaseRemoteConfig get firebaseRemoteConfig =>
      FirebaseRemoteConfig.instance;

  @Named(NetworkServiceType.hadithFlashcard)
  @preResolve
  Future<INetworkService> networkHadithFlashcard({
    required Env env,
  }) async {
    return _setupNetwork(
      env.hadithFlascardBaseUrl,
    );
  }

  Future<INetworkService> _setupNetwork(
    String baseUrl,
  ) async {
    final client = NetworkService(
      connectTimeout: 30 * 1000, // 60 seconds
      receiveTimeout: 30 * 1000, // 60 seconds
      baseUrl: baseUrl,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      contentType: ContentType.json.mimeType,
    );

    // client.addInterceptors([
    //   tokenInterceptor,
    //   LoggerInterceptor(),
    // ]);

    return client;
  }
}

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/network/network_failure.dart';

abstract class INetworkService {
  Future<Either<NetworkFailure, dynamic>> getHttp({
    required String path,
    String? parameter,
    // dynamic? content,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    ResponseType responseType,
    Function(int, int)? onReceiveProgress,
  });

  Future<Either<NetworkFailure, dynamic>> postHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    dynamic content,
    String? contentType,
    ResponseType responseType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  });

  Future<Either<NetworkFailure, dynamic>> putHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    ResponseType responseType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  });

  Future<Either<NetworkFailure, dynamic>> deleteHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  });

  Future<Either<NetworkFailure, dynamic>> download({
    required String url,
    required String downloadPath,
    required String fileName,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    Function(int, int)? onReceiveProgress,
  });

  // void addInterceptors(Iterable<Interceptor> interceptors);
  Dio getDio();
}

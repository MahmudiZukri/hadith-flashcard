import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/network/network_failure.dart';
import 'package:hadith_flashcard/domain/core/interfaces/i_network_service.dart';

class NetworkService implements INetworkService {
  late final Dio _dio;
  late final Connectivity connectivity;

  NetworkService({
    String? method,
    int? connectTimeout,
    int? receiveTimeout,
    int? sendTimeout,
    String baseUrl = '',
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? extra,
    Map<String, dynamic>? headers,
    ResponseType? responseType = ResponseType.json,
    String? contentType,
    bool Function(int?)? validateStatus,
    bool? receiveDataWhenStatusError,
    bool? followRedirects,
    int? maxRedirects,
    List<int> Function(String, RequestOptions)? requestEncoder,
    String Function(List<int>, RequestOptions, ResponseBody)? responseDecoder,
    ListFormat? listFormat,
    bool setRequestContentTypeWhenNoPayload = false,
    Dio? dio,
  }) : _dio = dio ?? Dio() {
    final BaseOptions _options = BaseOptions(
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      headers: headers,
      baseUrl: baseUrl,
      contentType: contentType,
      extra: extra,
      followRedirects: followRedirects,
      listFormat: listFormat,
      maxRedirects: maxRedirects,
      method: method,
      queryParameters: queryParameters,
      receiveDataWhenStatusError: receiveDataWhenStatusError,
      requestEncoder: requestEncoder,
      responseDecoder: responseDecoder,
      responseType: responseType,
      setRequestContentTypeWhenNoPayload: setRequestContentTypeWhenNoPayload,
      validateStatus: validateStatus,
    );
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return baseUrl.contains(host);
      };
      return client;
    };

    _dio.options = _options;

    connectivity = Connectivity();
  }

  // @override
  // void addInterceptors(Iterable<Interceptor> interceptors) {
  //   _dio.interceptors.addAll(interceptors);
  // }

  @override
  Future<Either<NetworkFailure, dynamic>> getHttp({
    required String path,
    String? parameter,
    dynamic content,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    ResponseType? responseType,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final Map<String, dynamic> dioHeader = _dio.options.headers;
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        _dio.options = _dio.options.copyWith(
          responseType: ResponseType.json,
        );

        if (header != null) {
          headers.addAll(header);
        }
        dioHeader.addAll(headers);
        _dio.options.headers = dioHeader;

        if (responseType != null) {
          _dio.options = _dio.options.copyWith(
            responseType: responseType,
          );
        }

        final Response response = await _dio.get(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          onReceiveProgress: onReceiveProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkFailure.timeout());
          case DioErrorType.other:
            return left(NetworkFailure.other(e: e));
          default:
            return left(NetworkFailure.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkFailure.noInternet());
    }
  }

  @override
  Future<Either<NetworkFailure, dynamic>> postHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    dynamic content,
    String? contentType,
    ResponseType? responseType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        if (content is! FormData) {
          final Map<String, dynamic> dioHeader = _dio.options.headers;
          final Map<String, dynamic> headers = {
            'content-type': contentType ?? ContentType.json.mimeType,
            'Accept': contentType ?? ContentType.json.mimeType,
          };
          if (header != null) {
            headers.addAll(header);
          }
          dioHeader.addAll(headers);
          _dio.options.headers = dioHeader;
        }
        if (responseType != null) {
          _dio.options = _dio.options.copyWith(
            responseType: responseType,
          );
        }

        final Response response = await _dio.post(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkFailure.timeout());
          case DioErrorType.other:
            return left(NetworkFailure.other(e: e));
          default:
            return left(NetworkFailure.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkFailure.noInternet());
    }
  }

  @override
  Future<Either<NetworkFailure, dynamic>> putHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    ResponseType? responseType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        // await baseStorage.openBox(StorageConstants.base);
        final Map<String, dynamic> dioHeader = _dio.options.headers;
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }
        dioHeader.addAll(headers);
        _dio.options.headers = dioHeader;
        if (responseType != null) {
          _dio.options = _dio.options.copyWith(
            responseType: responseType,
          );
        }

        final Response response = await _dio.put(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());

        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkFailure.timeout());
          case DioErrorType.other:
            return left(NetworkFailure.other(e: e));
          default:
            return left(NetworkFailure.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkFailure.noInternet());
    }
  }

  @override
  Future<Either<NetworkFailure, dynamic>> deleteHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    Map<String, dynamic>? header,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        // await baseStorage.openBox(StorageConstants.base);
        final Map<String, dynamic> dioHeader = _dio.options.headers;
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }
        dioHeader.addAll(headers);
        _dio.options.headers = dioHeader;
        final Response response = await _dio.delete(
          '$path${parameter ?? ""}',
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());

        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkFailure.timeout());
          case DioErrorType.other:
            return left(NetworkFailure.other(e: e));
          default:
            return left(NetworkFailure.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkFailure.noInternet());
    }
  }

  @override
  Future<Either<NetworkFailure, dynamic>> download({
    required String url,
    required String downloadPath,
    required String fileName,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    Function(int, int)? onReceiveProgress,
  }) async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        // await baseStorage.openBox(StorageConstants.base);
        final Directory savedDir = Directory(downloadPath);
        final bool hasExisted = await savedDir.exists();

        if (!hasExisted) {
          await savedDir.create(recursive: true);
        }
        final Map<String, dynamic> dioHeader = _dio.options.headers;
        final Map<String, dynamic> headers = {
          'Accept': ContentType.binary.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }
        dioHeader.addAll(headers);
        _dio.options.headers = dioHeader;

        final Response response = await _dio.download(
          url,
          '$downloadPath/$fileName',
          queryParameters: queryParameter,
          onReceiveProgress: onReceiveProgress,
        );
        return right(response.data);
      } on DioError catch (e) {
        debugPrint('================ERROR==================');
        debugPrint(e.type.toString());
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const NetworkFailure.timeout());
          case DioErrorType.other:
            return left(NetworkFailure.other(e: e));
          default:
            return left(NetworkFailure.serverError(response: e.response));
        }
      }
    } else {
      return left(const NetworkFailure.noInternet());
    }
  }

  @override
  Dio getDio() {
    return _dio;
  }
}

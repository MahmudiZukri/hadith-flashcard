import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failures.freezed.dart';

@freezed
class CommonFailures with _$CommonFailures {
  const factory CommonFailures.handledByFirebase({
    required String message,
  }) = _HandledByFirebase;
  const factory CommonFailures.platformException({
    required String message,
  }) = _PlatformException;
  const factory CommonFailures.empty() = _Empty;
  const factory CommonFailures.noInternet() = _NoInternet;
  const factory CommonFailures.serverError({
    required String? message,
  }) = _ServerError;
  const factory CommonFailures.timeout() = _Timeout;
  const factory CommonFailures.parseError({
    required String message,
  }) = _ParseError;
  const factory CommonFailures.other({
    required String? message,
  }) = _Other;
}

extension CommonFailuresX on CommonFailures {
  String get message => maybeWhen(
        empty: () => '',
        noInternet: () => 'No internet connection found',
        serverError: (msg) => msg ?? 'Server went wrong ($msg)',
        timeout: () => 'Connection timeout',
        parseError: (msg) => 'Parse Error ($msg)',
        handledByFirebase: (msg) => 'Firebase Error',
        platformException: (msg) => 'Platform Exception',
        other: (msg) => msg ?? 'Something went wrong',
        orElse: () => 'Something went wrong',
      );
}

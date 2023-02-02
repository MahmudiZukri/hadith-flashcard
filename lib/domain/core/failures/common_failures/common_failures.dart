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
  const factory CommonFailures.other({
    required String message,
  }) = _Other;
}

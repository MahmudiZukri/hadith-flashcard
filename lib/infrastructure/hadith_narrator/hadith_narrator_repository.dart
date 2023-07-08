import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/network/network_failure.dart';
import 'package:hadith_flashcard/domain/core/interfaces/i_network_service.dart';
import 'package:hadith_flashcard/infrastructure/core/urls.dart';
import 'package:hadith_flashcard/infrastructure/hadith_narrator/model/hadith_narrator_model.dart';
import 'package:http/http.dart' as http;
import 'package:hadith_flashcard/domain/hadith_narrator/hadith_narrator.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/i_hadith_narrator_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHadithNarratorRepository)
class HadithNarratorRepository implements IHadithNarratorRepository {
  final INetworkService _networkService;

  HadithNarratorRepository(
    //di bagian sini agak beda dengan kada
    this._networkService,
  );

  FutureOr<Either<CommonFailures, R>> _handleFailure<R>(NetworkFailure l) =>
      l.when(
        other: (e) => left(CommonFailures.other(message: e.message)),
        noInternet: () => left(const CommonFailures.noInternet()),
        timeout: () => left(const CommonFailures.timeout()),
        serverError: (res) =>
            left(CommonFailures.serverError(message: res?.statusMessage)),
      );

  @override
  Future<Either<CommonFailures, IList<HadithNarrator>>> getAllHadithNarrators({
    required http.Client? client,
  }) async {
    final response = await _networkService.getHttp(
      path: Urls.getHadithNarrators,
    );

    return response.fold(
      _handleFailure,
      (r) {
        try {
          final hadithNarrator = IList<HadithNarratorModel>.fromJson(
            r as Map<String, dynamic>,
            (val) => HadithNarratorModel.fromJson(
              val as Map<String, dynamic>,
            ),
          );

          return right(
            hadithNarrator
                .map(
                  (element) => element.toDomain(),
                )
                .toIList(),
          );
        } catch (e, stackTrace) {
          debugPrint(
            stackTrace.toString(),
          );
          return left(
            CommonFailures.parseError(
              message: e.toString(),
            ),
          );
        }
      },
    );
  }
}
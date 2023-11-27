part of '../repositories.dart';

@LazySingleton(as: IHadithNarratorRepository)
class HadithNarratorRepository implements IHadithNarratorRepository {
  final INetworkService _networkService;

  HadithNarratorRepository(
    @Named(NetworkServiceType.hadithFlashcard) this._networkService,
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
  Future<Either<CommonFailures, IList<HadithNarrator>>>
      getAllHadithNarrators() async {
    final response = await _networkService.getHttp(
      path: Urls.getHadithNarrators,
    );

    return response.fold(
      _handleFailure,
      (r) {
        try {
          final hadithNarrator = IList<HadithNarratorModel>.fromJson(
            r,
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
          debugPrint('1------- $stackTrace -------1');

          return left(
            CommonFailures.parseError(
              message: e.toString(),
            ),
          );
        }
      },
    );
  }

  @override
  Future<Either<CommonFailures, HadithNarrator>> getHadithsByNarratorName({
    required String narratorName,
    required int page,
    required int limit,
  }) async {
    final response = await _networkService.getHttp(
      path: Urls.getHadithsByNarrator(
        narratorName,
      ),
      queryParameter: {
        'page': page,
        'limit': limit,
      },
    );

    return response.fold(
      _handleFailure,
      (r) {
        try {
          final hadithNarrator = HadithNarratorModel.fromJson(
            r as Map<String, dynamic>,
          );

          return right(
            hadithNarrator.toDomain(),
          );
        } catch (e, stackTrace) {
          debugPrint('1------- $stackTrace -------1');

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

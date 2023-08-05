import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/hadith_narrator.dart';

abstract class IHadithNarratorRepository {
  Future<Either<CommonFailures, IList<HadithNarrator>>> getAllHadithNarrators();
  Future<Either<CommonFailures, HadithNarrator>> getHadithNarratorByName({
    required String narratorName,
    required int page,
    required int limit,
  });
}

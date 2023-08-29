import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/hadith_narrator.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/interfaces/i_hadith_narrator_repository.dart';
import 'package:injectable/injectable.dart';

part 'hadith_narrator_event.dart';
part 'hadith_narrator_state.dart';
part 'hadith_narrator_bloc.freezed.dart';

@injectable
class HadithNarratorBloc
    extends Bloc<HadithNarratorEvent, HadithNarratorState> {
  final IHadithNarratorRepository hadithNarratorRepository;

  HadithNarratorBloc(
    this.hadithNarratorRepository,
  ) : super(HadithNarratorState.initial()) {
    on<HadithNarratorEvent>(
      (event, emit) async {
        await event.map(
          getHadithNarrators: (_) async {
            final failureOrResponse =
                await hadithNarratorRepository.getAllHadithNarrators();

            emit(
              state.copyWith(
                optionFailureOrHadithNarrators: optionOf(
                  failureOrResponse,
                ),
              ),
            );
          },
          getHadithNarratorByName: (e) async {
            final failureOrResponse =
                await hadithNarratorRepository.getHadithNarratorByName(
              narratorName: e.narratorName.getOrCrash(),
              page: e.page?.getOrNull()?.toInt() ?? 1,
              limit: e.limit?.getOrNull()?.toInt() ?? 20,
            );

            emit(
              state.copyWith(
                optionFailureOrHadithNarratorByName: optionOf(
                  failureOrResponse,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

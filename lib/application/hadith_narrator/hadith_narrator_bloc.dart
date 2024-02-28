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
  ) : super(
          HadithNarratorState.initial(),
        ) {
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
          narratorFilterChanged: (e) {
            emit(
              state.copyWith(
                selectedNarrator: e.selectedNarrator,
              ),
            );
          },
          hadithNumberSearch: (e) {
            emit(
              state.copyWith(
                hadithNumber: e.number,
              ),
            );
          },
          searchHadith: (e) async {
            emit(
              state.copyWith(
                isSearching: true,
              ),
            );

            if (state.selectedNarrator != null && state.hadithNumber != null) {
              final failureOrResponse =
                  await hadithNarratorRepository.getHadithsByNarratorName(
                page: state.hadithNumber!.getOrCrash().toInt(),
                narratorName: state.selectedNarrator!.slug.getOrCrash(),
                limit: 1,
              );

              emit(
                state.copyWith(
                  optionFailureOrHadithNarratorByName: optionOf(
                    failureOrResponse,
                  ),
                ),
              );
              emit(
                state.copyWith(
                  isSearching: false,
                ),
              );
            }
          },
          getHadithsByNarratorName: (e) async {
            final failureOrResponse =
                await hadithNarratorRepository.getHadithsByNarratorName(
              narratorName: e.narratorName.getOrCrash(),
              limit: e.limit?.getOrNull()?.toInt() ?? 25,
              page:
                  // when user is searching hadith
                  e.hadithNumber != null
                      ? e.hadithNumber!.getOrCrash().toInt()
                      : state.optionFailureOrHadithNarratorByName.fold(
                          () => 1,
                          (either) => either.foldRight(
                            1,
                            (acc, b) {
                              return e.isNextPage != null &&
                                      e.isNextPage == true &&
                                      b.pagination != null &&
                                      b.pagination!.currentPage.getOrZero() <
                                          b.pagination!.endPage.getOrZero()
                                  ? b.pagination!.currentPage
                                          .getOrZero()
                                          .toInt() +
                                      1
                                  : 1;
                            },
                          ),
                        ),
            );

            emit(
              state.copyWith(
                hadiths: failureOrResponse.foldRight(
                  <Item>[].lock,
                  (acc, b) => state.hadiths + b.items!,
                ),
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

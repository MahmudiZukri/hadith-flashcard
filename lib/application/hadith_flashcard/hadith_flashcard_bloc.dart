import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';
import 'package:hadith_flashcard/domain/core/sm2.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/hadith_flashcard.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/interfaces/i_hadith_flashcard_repository.dart';
import 'package:hadith_flashcard/infrastructure/hadith_flashcard/model/hadith_flashcard_model.dart';
import 'package:injectable/injectable.dart';

part 'hadith_flashcard_event.dart';
part 'hadith_flashcard_state.dart';
part 'hadith_flashcard_bloc.freezed.dart';

@injectable
class HadithFlashcardBloc
    extends Bloc<HadithFlashcardEvent, HadithFlashcardState> {
  final IHadithFlashcardRepository hadithFlashcardRepository;

  HadithFlashcardBloc(
    this.hadithFlashcardRepository,
  ) : super(HadithFlashcardState.initial()) {
    on<HadithFlashcardEvent>(
      (event, emit) async {
        await event.map(
          resetFlashcardSnackBar: (_) {
            emit(
              state.copyWith(
                optionFailureOrSaveFlashcard: none(),
              ),
            );
          },
          saveFlashcard: (e) async {
            Sm2Response? smResponse;
            HadithFlashcardModel cardModel;

            if (e.quality != null) {
              smResponse = Sm2.calc(
                quality: e.quality!,
                repetition: e.flashcard.repetition,
                previousInterval: e.flashcard.interval,
                previousEaseFactor: e.flashcard.easeFactor,
              );
            }

            cardModel = HadithFlashcardModel(
              hadithNarratorName: e.flashcard.hadithNarratorName.getOrCrash(),
              hadithNumber: e.flashcard.hadithNumber.getOrCrash().toInt(),
              question: e.flashcard.question.getOrCrash(),
              answer: e.flashcard.answer.getOrCrash(),
              translation: e.flashcard.translation.getOrCrash(),
              interval: smResponse?.interval ?? e.flashcard.interval,
              repetition: smResponse?.interval ?? e.flashcard.interval,
              easeFactor: smResponse?.easeFactor ?? e.flashcard.easeFactor,
              reviewedDate: DateTime.now(),
            );

            final failureOrResponse =
                await hadithFlashcardRepository.saveFlashcard(
              userID: e.userID.getOrCrash(),
              flashcard: cardModel,
            );

            emit(
              state.copyWith(
                optionFailureOrSaveFlashcard: optionOf(
                  failureOrResponse,
                ),
                flashcardToReviewLength: failureOrResponse.isRight()
                    ? state.flashcardToReviewLength + 1
                    : state.flashcardToReviewLength,
              ),
            );
          },
          getFlashcard: (e) async {
            final failureOrResponse =
                await hadithFlashcardRepository.getFlashcard(
              userID: e.userID.getOrCrash(),
            );

            emit(
              state.copyWith(
                optionFailureOrGetFlashcard: optionOf(
                  failureOrResponse,
                ),
              ),
            );

            emit(
              state.copyWith(
                flashcardToReviewLength: state.getFlashcardsToReview.length,
              ),
            );
          },
        );
      },
    );
  }
}

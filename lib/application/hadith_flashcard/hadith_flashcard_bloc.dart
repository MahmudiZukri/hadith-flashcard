import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/interfaces/i_hadith_flashcard_repository.dart';
import 'package:hadith_flashcard/infrastructure/hadith_flashcard/model/hadith_flashcard_model.dart';

part 'hadith_flashcard_event.dart';
part 'hadith_flashcard_state.dart';
part 'hadith_flashcard_bloc.freezed.dart';

class HadithFlashcardBloc
    extends Bloc<HadithFlashcardEvent, HadithFlashcardState> {
  final IHadithFlashcardRepository hadithFlashcardRepository;

  HadithFlashcardBloc(
    this.hadithFlashcardRepository,
  ) : super(HadithFlashcardState.initial()) {
    on<HadithFlashcardEvent>(
      (event, emit) async {
        await event.map(
          saveFlashcard: (e) async {
            final failureOrResponse =
                await hadithFlashcardRepository.saveFlashcard(
              userID: e.userID.getOrCrash(),
              flashcard: e.flashcard,
            );

            emit(
              state.copyWith(
                optionFailureOrSuccess: optionOf(
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

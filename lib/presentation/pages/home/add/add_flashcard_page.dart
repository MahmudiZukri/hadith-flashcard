import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadith_flashcard/application/hadith_narrator/hadith_narrator_bloc.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';

class AddFlashcardPage extends StatelessWidget {
  const AddFlashcardPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HadithNarratorBloc, HadithNarratorState>(
      builder: (context, hadithNarratorState) {
        return hadithNarratorState.optionFailureOrHadithNarrator.match(
          () => const SizedBox(),
          (either) => either.fold(
            (l) => Text(
              l.message,
            ),
            (hadithNarrators) => Column(
              children: List.generate(
                hadithNarrators.length,
                (index) => Text(
                  hadithNarrators[index].name.getOrCrash(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadith_flashcard/application/hadith_narrator/hadith_narrator_bloc.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';
import 'package:hadith_flashcard/presentation/core/widgets/custom_dropdown_button_widget.dart';
import 'package:hadith_flashcard/presentation/core/widgets/custom_search_widget.dart';

class AddFlashcardPage extends StatelessWidget {
  const AddFlashcardPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HadithNarratorBloc, HadithNarratorState>(
      builder: (context, hadithNarratorState) {
        return hadithNarratorState.optionFailureOrHadithNarrator.match(
          () => const Text('Loading..'),
          (either) => either.fold(
            (l) => Text(
              l.message,
            ),
            (hadithNarrators) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  height: screenHeight(context) / 5.2,
                  child: Stack(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Hadith Narrator',
                          style: whiteTextFont.copyWith(fontSize: 20.0),
                        ),
                      ),
                      Align(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // think the content later

                            CustomDropdownButtonWidget(
                              borderColor: whiteColor,
                              backgroundColor: whiteColor.withOpacity(0.5),
                              value: hadithNarrators.first.name.getOrCrash(),
                              items: hadithNarrators
                                  .map(
                                    (element) => DropdownMenuItem(
                                      value: element.name.getOrCrash(),
                                      child: Text(
                                        element.name.getOrCrash(),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              borderRadius: mediumBorderRadius(),
                              onChanged: (val) {},
                            ),
                            CustomSearchWidget(
                              height: 45,
                              borderColor: whiteColor,
                              iconColor: whiteColor,
                              fontColor: blackColor,
                              borderRadius: mediumBorderRadius(),
                              width: screenWidth(context) / 2.2,
                              backgroundColor: whiteColor.withOpacity(0.5),
                              hintFontSize: 14.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: ListView(
                    children: List.generate(
                      hadithNarrators.length,
                      (index) => ListTile(
                        dense: true,
                        title: Text(
                          hadithNarrators[index].name.getOrCrash(),
                        ),
                        subtitle: Text(
                          hadithNarrators[index].total.getOrCrash().toString(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

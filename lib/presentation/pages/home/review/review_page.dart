part of '../../pages.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({
    required this.userID,
    required this.gotoNarratorPageOnPressed,
    super.key,
  });

  final UniqueString userID;
  final Function() gotoNarratorPageOnPressed;

  @override
  Widget build(BuildContext context) {
    FlipCardController cardController = FlipCardController();

    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: BlocBuilder<HadithFlashcardBloc, HadithFlashcardState>(
        builder: (context, hadithFlashcardState) {
          return hadithFlashcardState.optionFailureOrGetFlashcard.match(
            () => const CustomCircularProgressIndicatorWidget(),
            (either) => either.fold(
              (l) => Text(
                l.message,
              ),
              (flashcards) {
                final flashcardsToReviewLength =
                    hadithFlashcardState.getFlashcardsToReview.length;
                final flashcardIsEmpty = flashcards == <HadithFlashcard>[].lock;
                final flashcardToReviewIsEmpty =
                    hadithFlashcardState.getFlashcardsToReview ==
                        <HadithFlashcard>[].lock;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 20.0,
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(
                            8,
                            4,
                            8,
                            12,
                          ),
                          decoration: BoxDecoration(
                            color: blackColor.withOpacity(
                              0.3,
                            ),
                            borderRadius: mediumBorderRadius(),
                          ),
                        ),
                        AnimatedContainer(
                          height: 20.0,
                          width: double.infinity /
                              hadithFlashcardState.getFlashcardsToReview.length,
                          duration: const Duration(
                            milliseconds: 1000,
                          ),
                          padding: const EdgeInsets.fromLTRB(
                            8,
                            4,
                            8,
                            12,
                          ),
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: mediumBorderRadius(),
                          ),
                          child: Container(
                            height: 8.0,
                            decoration: BoxDecoration(
                              color: whiteColor.withOpacity(
                                0.5,
                              ),
                              borderRadius: mediumBorderRadius(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      flashcardsToReviewLength.toString(),
                    ),
                    flashcardIsEmpty
                        ? CustomContainer(
                            color: whiteColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  // TODO: add lottie animation later here
                                  "You don't have any flashcard",
                                  textAlign: TextAlign.center,
                                  style: blackTextFont.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                TextButton(
                                  onPressed: gotoNarratorPageOnPressed,
                                  child: Text(
                                    'Add Your Flashcard',
                                    style: primaryTextFont.copyWith(
                                      fontSize: 15,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : flashcardToReviewIsEmpty
                            ? CustomContainer(
                                color: whiteColor,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      // TODO: add lottie animation later here
                                      "You don't have flashcards to review :(",
                                      textAlign: TextAlign.center,
                                      style: blackTextFont.copyWith(
                                        fontSize: 15,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: gotoNarratorPageOnPressed,
                                      child: Text(
                                        'Add More Flashcards',
                                        style: primaryTextFont.copyWith(
                                          fontSize: 15,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Stack(
                                children: [
                                  CustomFlipCard(
                                    card: hadithFlashcardState
                                        .getFlashcardsToReview.first,
                                    controller: cardController,
                                  ),
                                ],
                              ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        6,
                        (index) => CustomReviewButton(
                          userID: userID.getOrCrash(),
                          quality: index,
                          disabled:
                              flashcardIsEmpty || flashcardToReviewIsEmpty,
                          cardController: cardController,
                          onTap: () {
                            context.read<HadithFlashcardBloc>()
                              ..add(
                                HadithFlashcardEvent.saveFlashcard(
                                  userID: userID,
                                  flashcard: hadithFlashcardState
                                      .getFlashcardsToReview.first,
                                  quality: index,
                                ),
                              )
                              ..add(
                                HadithFlashcardEvent.getFlashcard(
                                  userID: userID,
                                ),
                              );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

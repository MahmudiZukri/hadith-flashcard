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
                      hadithFlashcardState.flashcardToReviewLength.toString(),
                    ),
                    flashcardIsEmpty
                        ? CustomContainer(
                            color: whiteColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Lottie.asset(
                                  AssetUrl.emptyFlashcardLottie,
                                  height: screenWidth(context) / 2.4,
                                ),
                                const SizedBox(height: 40),
                                Text(
                                  "youDon'tHaveAnyFlashcard",
                                  textAlign: TextAlign.center,
                                  style: blackTextFont.copyWith(
                                    fontSize: 15,
                                  ),
                                ).tr(),
                                TextButton(
                                  onPressed: gotoNarratorPageOnPressed,
                                  child: Text(
                                    'addYourFlashcard',
                                    style: primaryTextFont.copyWith(
                                      fontSize: 15,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ).tr(),
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
                                    Lottie.asset(
                                      AssetUrl.emptyFlashcardLottie,
                                      height: screenWidth(context) / 2.4,
                                    ),
                                    const SizedBox(height: 40),
                                    Text(
                                      "youDon'tHaveFlashcardsToReview",
                                      textAlign: TextAlign.center,
                                      style: blackTextFont.copyWith(
                                        fontSize: 15,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: gotoNarratorPageOnPressed,
                                      child: Text(
                                        'addMoreFlashcards',
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
                                    selectedLanguage:
                                        ELanguage.values.firstWhere(
                                      (element) =>
                                          element.locale ==
                                          context.locale.toString(),
                                    ),
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

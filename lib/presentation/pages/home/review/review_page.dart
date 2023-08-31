part of '../../pages.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({
    required this.userID,
    super.key,
  });

  final UniqueString userID;

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
          return hadithFlashcardState.optionFailureOrGetFlashcardSuccess.match(
            () => const CustomCircularProgressIndicatorWidget(),
            (either) => either.fold(
              (l) => Text(
                l.message,
              ),
              (flashcards) {
                // TODO: update UI of these :
                // 1. user don't have card at all
                // 2. user have card but don't have to review

                if (flashcards == <HadithFlashcard>[].lock) {
                  return const Center(child: Text('flashcard is empty'));
                } else if (hadithFlashcardState.getFlashcardsToReview ==
                    <HadithFlashcard>[].lock) {
                  return const Center(
                      child: Text('you dont have flashcards to review'));
                } else {
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
                          Container(
                            height: 20.0,
                            width: 100,
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
                      CustomFlipCard(
                        card: hadithFlashcardState.getFlashcardsToReview.first,
                        controller: cardController,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          6,
                          (index) => CustomReviewButton(
                            userID: userID.getOrCrash(),
                            quality: index,
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
                }
              },
            ),
          );
        },
      ),
    );
  }
}

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
      child: BlocBuilder<RemoteConfigBloc, RemoteConfigState>(
        builder: (_, remoteConfigState) {
          return BlocBuilder<AdBloc, AdState>(
            builder: (_, adState) {
              return BlocBuilder<HadithFlashcardBloc, HadithFlashcardState>(
                builder: (_, hadithFlashcardState) {
                  return hadithFlashcardState.optionFailureOrGetFlashcard.match(
                    () => const SizedBox(),
                    (either) => either.fold(
                      (l) => Center(
                        child: Text(
                          l.message,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      (flashcards) {
                        var showcaseState = context.watch<ShowcaseBloc>().state;

                        final flashcardIsEmpty =
                            flashcards == <HadithFlashcard>[].lock;
                        final flashcardToReviewIsEmpty =
                            hadithFlashcardState.getFlashcardsToReview ==
                                <HadithFlashcard>[].lock;

                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Reviewed flashcard bar
                            ReviewedFlashcardBarColumn(
                              hadithFlashcardState: hadithFlashcardState,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                flashcardIsEmpty
                                    // Empty flashcard
                                    ? EmptyFlashcardContainer(
                                        gotoNarratorPageOnPressed:
                                            gotoNarratorPageOnPressed,
                                      )
                                    : flashcardToReviewIsEmpty
                                        // Flashcard to review is empty
                                        ? FlashcardToReviewIsEmptyContainer(
                                            hadithFlashcardState:
                                                hadithFlashcardState,
                                            gotoNarratorPageOnPressed:
                                                gotoNarratorPageOnPressed,
                                          )
                                        // Flip card
                                        : CustomFlipCard(
                                            showcaseState: context
                                                .watch<ShowcaseBloc>()
                                                .state,
                                            card: hadithFlashcardState
                                                .getFlashcardsToReview.first,
                                            controller: cardController,
                                            selectedLanguage:
                                                ELanguage.values.firstWhere(
                                              (element) =>
                                                  element.locale ==
                                                  Get.locale.toString(),
                                            ),
                                          ),
                                Positioned(
                                  top: screenHeight() / 10,
                                  child: Showcase(
                                    key: showcaseState.welcomeGlobalKey,
                                    showArrow: false,
                                    description: 'welcomeText'.tr,
                                    descriptionAlignment: TextAlign.center,
                                    child: const SizedBox(),
                                  ),
                                ),
                                Positioned(
                                  top: screenHeight() / 10,
                                  child: Showcase(
                                    key: showcaseState.enjoyGlobalKey,
                                    showArrow: false,
                                    description: 'enjoyText'.tr,
                                    descriptionAlignment: TextAlign.center,
                                    child: const SizedBox(),
                                  ),
                                ),
                              ],
                            ),

                            // Qualities button
                            QualitiesButtonRow(
                              userID: userID,
                              hadithFlashcardState: hadithFlashcardState,
                              flashcardIsEmpty: flashcardIsEmpty,
                              flashcardToReviewIsEmpty:
                                  flashcardToReviewIsEmpty,
                              cardController: cardController,
                            ),

                            // Review page banner ads
                            if (remoteConfigState.isEnableAds &&
                                adState.reviewPageBannerAd != null)
                              CustomAdWidget(
                                bannerAd: adState.reviewPageBannerAd!,
                              ),

                            // Space for bottom nav bar
                            SizedBox(
                              height: screenHeight() / 10,
                            )
                          ],
                        );
                      },
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class ReviewedFlashcardBarColumn extends StatelessWidget {
  const ReviewedFlashcardBarColumn({
    required this.hadithFlashcardState,
    super.key,
  });

  final HadithFlashcardState hadithFlashcardState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ReviewedFlashcardBar(
          hadithFlashcardState: hadithFlashcardState,
        ),
        const SizedBox(height: 10.0),
        Text(
          '${hadithFlashcardState.numofReviewedFlashcard} / ${hadithFlashcardState.flashcardToReviewTodayLength}',
          style: TextStyle(
            fontSize: 18.0,
            color: colorScheme().surface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class QualitiesButtonRow extends StatelessWidget {
  const QualitiesButtonRow({
    required this.hadithFlashcardState,
    required this.userID,
    required this.flashcardIsEmpty,
    required this.flashcardToReviewIsEmpty,
    required this.cardController,
    super.key,
  });

  final HadithFlashcardState hadithFlashcardState;
  final UniqueString userID;
  final bool flashcardIsEmpty;
  final bool flashcardToReviewIsEmpty;
  final FlipCardController cardController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        6,
        (index) => CustomReviewButton(
          userID: userID.getOrCrash(),
          quality: index,
          disabled: flashcardIsEmpty || flashcardToReviewIsEmpty,
          onTap: () {
            context.read<HadithFlashcardBloc>().add(
                  HadithFlashcardEvent.saveFlashcard(
                    userID: userID,
                    flashcard: hadithFlashcardState.getFlashcardsToReview.first,
                    quality: index,
                  ),
                );

            if (cardController.state!.isFront == false) {
              cardController.toggleCard();
            }

            Timer(
              const Duration(milliseconds: 250),
              () {
                context.read<HadithFlashcardBloc>().add(
                      HadithFlashcardEvent.getFlashcard(
                        userID: userID,
                      ),
                    );
              },
            );
          },
        ),
      ),
    );
  }
}

class FlashcardToReviewIsEmptyContainer extends StatelessWidget {
  const FlashcardToReviewIsEmptyContainer({
    required this.hadithFlashcardState,
    required this.gotoNarratorPageOnPressed,
    super.key,
  });

  final HadithFlashcardState hadithFlashcardState;
  final Function() gotoNarratorPageOnPressed;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: colorScheme().surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Lottie.asset(
              hadithFlashcardState.isShowCongratsAnimation
                  ? AssetUrl.congratsLottie
                  : AssetUrl.emptyFlashcardLottie,
              height: hadithFlashcardState.isShowCongratsAnimation
                  ? screenWidth() / 1.6
                  : screenWidth() / 2.4,
            ),
          ),
          Column(
            children: [
              Text(
                hadithFlashcardState.isShowCongratsAnimation
                    ? "congratsYouHaveCompletedToday'sFlashcard".tr
                    : "youDon'tHaveFlashcardsToReview".tr,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: adaptiveTextFont().copyWith(
                  fontSize: 14,
                ),
              ),
              TextButton(
                onPressed: gotoNarratorPageOnPressed,
                child: Text(
                  'addMoreFlashcards'.tr,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: primaryTextFont.copyWith(
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class EmptyFlashcardContainer extends StatelessWidget {
  const EmptyFlashcardContainer({
    required this.gotoNarratorPageOnPressed,
    super.key,
  });

  final Function() gotoNarratorPageOnPressed;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: colorScheme().surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            AssetUrl.emptyFlashcardLottie,
            height: screenWidth() / 2.4,
          ),
          const SizedBox(height: 40),
          Text(
            "youDon'tHaveAnyFlashcard".tr,
            textAlign: TextAlign.center,
            style: adaptiveTextFont().copyWith(
              fontSize: 15,
            ),
          ),
          TextButton(
            onPressed: gotoNarratorPageOnPressed,
            child: Text(
              'addYourFlashcard'.tr,
              style: primaryTextFont.copyWith(
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewedFlashcardBar extends StatelessWidget {
  const ReviewedFlashcardBar({
    required this.hadithFlashcardState,
    super.key,
  });

  final HadithFlashcardState hadithFlashcardState;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 20.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: blackColor.withOpacity(
              0.3,
            ),
            borderRadius: mediumBorderRadius(),
          ),
        ),
        hadithFlashcardState.flashcardToReviewTodayLength == 0
            ? const SizedBox()
            : AnimatedContainer(
                height: 20.0,
                width: (screenWidth() - defaultMargin * 2) /
                    hadithFlashcardState.flashcardToReviewTodayLength *
                    hadithFlashcardState.numofReviewedFlashcard,
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
                    color: colorScheme().surface.withOpacity(
                          0.5,
                        ),
                    borderRadius: mediumBorderRadius(),
                  ),
                ),
              ),
      ],
    );
  }
}

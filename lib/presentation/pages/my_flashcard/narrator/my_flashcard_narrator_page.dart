part of '../../pages.dart';

class MyFlashcardNarratorPage extends StatelessWidget {
  const MyFlashcardNarratorPage({
    required this.userID,
    super.key,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HadithFlashcardBloc>(
      create: (context) => getIt<HadithFlashcardBloc>()
        ..add(
          HadithFlashcardEvent.getFlashcard(
            userID: userID,
          ),
        ),
      child: MyFlashcardNarratorPageScaffold(
        userID: userID,
      ),
    );
  }
}

class MyFlashcardNarratorPageScaffold extends StatelessWidget {
  const MyFlashcardNarratorPageScaffold({
    required this.userID,
    super.key,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HadithFlashcardBloc, HadithFlashcardState>(
      builder: (context, hadithFlashcardState) {
        return Scaffold(
          appBar: CustomAppBarWidget(
            title: 'MyFlashcard'.tr,
            desc: '${hadithFlashcardState.getFlashcards.length} ${'hadith'.tr}',
            actions: [
              GestureDetector(
                onTap: () {
                  Get.to(
                    () => HomePage(
                      userID: userID,
                      pageIndex: 1,
                    ),
                  );
                },
                child: Icon(
                  MdiIcons.cardsOutline,
                ),
              ),
              const SizedBox(width: 12.0),
            ],
            leadingOnTap: () {
              Get.back();
            },
          ),
          body: hadithFlashcardState.optionFailureOrGetFlashcard.match(
            () => const CustomCircularProgressIndicatorWidget(),
            (either) => either.fold(
              (l) => Text('${'somethingWentWrrong'.tr} ( ${l.message} )'),
              (flashcards) {
                final IList<HadithFlashcard> filteredFlashcard =
                    CommonUtils.removeDuplicatesNarrator(
                  flashcards,
                ).toIList();

                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 12.0,
                  ),
                  child: filteredFlashcard == <HadithFlashcard>[].lock
                      ? Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: screenHeight(context) / 8),
                            child: Text(
                              "youDon'tHaveAnyFlashcard".tr,
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: filteredFlashcard.length,
                          itemBuilder: (context, index) {
                            return CustomListTile(
                              title: filteredFlashcard[index]
                                  .hadithNarratorName
                                  .getOrEmpty(),
                              titleFontSize: 14,
                              onTap: () {
                                //goto hadith flashcard

                                Get.to(
                                  () => MyFlashcardHadithPage(
                                    userID: userID,
                                    flashcards:
                                        hadithFlashcardState.getFlashcards
                                            .where(
                                              (element) =>
                                                  element.hadithNarratorName ==
                                                  filteredFlashcard[index]
                                                      .hadithNarratorName,
                                            )
                                            .toIList()
                                            .sort(
                                              (a, b) => a.hadithNumber
                                                  .getOrZero()
                                                  .compareObjectTo(
                                                    b.hadithNumber.getOrZero(),
                                                  ),
                                            ),
                                  ),
                                );
                              },
                              trailing: hadithFlashcardState
                                          .getFlashcardIsLoading ||
                                      !hadithFlashcardState
                                          .getLengthOfSavedFlashcardByNarratorName
                                          .contains(
                                        filteredFlashcard[index]
                                            .hadithNarratorName
                                            .getOrEmpty(),
                                      )
                                  ? const SizedBox()
                                  : FittedBox(
                                      child: Container(
                                        constraints: const BoxConstraints(
                                            minWidth: 34.0),
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: FocusDetector(
                                          onVisibilityGained: () {
                                            context
                                                .read<HadithFlashcardBloc>()
                                                .add(
                                                  HadithFlashcardEvent
                                                      .getFlashcard(
                                                    userID: userID,
                                                  ),
                                                );
                                          },
                                          child: Text(
                                            CommonUtils.currencyFormat(
                                              hadithFlashcardState
                                                  .getLengthOfSavedFlashcardByNarratorName
                                                  .map(
                                                    (element) => element ==
                                                            filteredFlashcard[
                                                                    index]
                                                                .hadithNarratorName
                                                                .getOrEmpty()
                                                        ? 1
                                                        : 0,
                                                  )
                                                  .reduce(
                                                    (value, element) =>
                                                        value + element,
                                                  ),
                                              showSymbol: false,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: whiteTextFont.copyWith(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                            );
                          },
                        ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

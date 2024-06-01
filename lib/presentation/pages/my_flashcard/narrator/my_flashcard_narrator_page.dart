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
                  color: colorScheme().inversePrimary,
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
              (l) => Text('${'somethingWentWrong'.tr} ( ${l.message} )'),
              (_) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 12.0,
                  ),
                  child: hadithFlashcardState
                              .getFilteredMyFlashcardByNarratorName ==
                          <HadithFlashcard>[].lock
                      ? Center(
                          child: Padding(
                            padding:
                                EdgeInsets.only(bottom: screenHeight() / 8),
                            child: Text(
                              "youDon'tHaveAnyFlashcard".tr,
                            ),
                          ),
                        )
                      : FocusDetector(
                          onFocusGained: () {
                            context.read<HadithFlashcardBloc>().add(
                                  HadithFlashcardEvent.getFlashcard(
                                    userID: userID,
                                  ),
                                );
                          },
                          child: ListView.builder(
                            itemCount: hadithFlashcardState
                                .getFilteredMyFlashcardByNarratorName.length,
                            itemBuilder: (context, index) {
                              return CustomListTile(
                                  title: hadithFlashcardState
                                      .getFilteredMyFlashcardByNarratorName[
                                          index]
                                      .hadithNarratorName
                                      .getOrEmpty(),
                                  titleFontSize: 14,
                                  onTap: () {
                                    //goto hadith flashcard

                                    Get.to(
                                      () => MyFlashcardHadithPage(
                                        userID: userID,
                                        flashcards: hadithFlashcardState
                                            .getFlashcards
                                            .where(
                                              (element) =>
                                                  element.hadithNarratorName ==
                                                  hadithFlashcardState
                                                      .getFilteredMyFlashcardByNarratorName[
                                                          index]
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
                                            hadithFlashcardState
                                                .getFilteredMyFlashcardByNarratorName[
                                                    index]
                                                .hadithNarratorName
                                                .getOrEmpty(),
                                          )
                                      ? const SizedBox()
                                      : CustomNumberContainerWidget(
                                          number: hadithFlashcardState
                                              .getLengthOfSavedFlashcardByNarratorName
                                              .map(
                                                (element) => element ==
                                                        hadithFlashcardState
                                                            .getFilteredMyFlashcardByNarratorName[
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
                                        ));
                            },
                          ),
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

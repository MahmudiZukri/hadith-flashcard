part of '../../pages.dart';

class MyFlashcardHadithPage extends StatelessWidget {
  const MyFlashcardHadithPage({
    required this.userID,
    required this.flashcards,
    super.key,
  });

  final UniqueString userID;
  final IList<HadithFlashcard> flashcards;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HadithFlashcardBloc>()
        ..add(
          HadithFlashcardEvent.addToMyFlashcard(
            flashcards: flashcards,
          ),
        ),
      child: MyFlashcardHadithPageScaffold(
        userID: userID,
        flashcards: flashcards,
      ),
    );
  }
}

class MyFlashcardHadithPageScaffold extends StatelessWidget {
  const MyFlashcardHadithPageScaffold({
    required this.userID,
    required this.flashcards,
    super.key,
  });

  final UniqueString userID;
  final IList<HadithFlashcard> flashcards;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HadithFlashcardBloc, HadithFlashcardState>(
      listenWhen: (previous, current) =>
          previous.myHadithFlashcards != current.myHadithFlashcards,
      listener: (context, flashcardState) {
        if (flashcardState.myHadithFlashcards.isEmpty) {
          Get.back();
        }
      },
      builder: (context, flashcardState) {
        return Scaffold(
          appBar: CustomAppBarWidget(
            title: flashcards.first.hadithNarratorName.getOrCrash(),
            desc: '${flashcardState.myHadithFlashcards.length} hadiths',
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
                  color: colorScheme(context).inversePrimary,
                ),
              ),
              const SizedBox(width: 12.0),
            ],
            leadingOnTap: () {
              Get.back();
            },
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultMargin / 2,
            ),
            child: ListView(
              children: [
                const SizedBox(height: 22.0),
                SvgPicture.asset(
                  AssetUrl.bismillahCalligraphy,
                  height: 52.0,
                  color: colorScheme(context).primary,
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: lightColor,
                ),
                const SizedBox(height: 12.0),
                flashcardState.myHadithFlashcards == <HadithFlashcard>[].lock
                    ? Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text(
                          "youDon'tHaveNarratorflashcards".trParams({
                            "narrator":
                                flashcards.first.hadithNarratorName.getOrCrash()
                          }),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Column(
                        children: List.generate(
                          flashcardState.myHadithFlashcards.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                        8.0,
                                        11.0,
                                        8.0,
                                        8.0,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: primaryColor,
                                          width: 3,
                                        ),
                                      ),
                                      child: Text(
                                        CommonUtils.replaceFarsiNumber(
                                          flashcardState
                                              .myHadithFlashcards[index]
                                              .hadithNumber
                                              .getOrCrash()
                                              .toString(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    GestureDetector(
                                      onTap: () {
                                        {
                                          CustomModalBottomSheet(context).show(
                                            isDismissible: false,
                                            widget: BlocProvider<
                                                HadithFlashcardBloc>.value(
                                              value: BlocProvider.of<
                                                  HadithFlashcardBloc>(
                                                context,
                                              ),
                                              child: BlocBuilder<
                                                  HadithFlashcardBloc,
                                                  HadithFlashcardState>(
                                                builder: (context, state) {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        '${'areYouSureWannaDelete'.tr} ${'Hadith'.tr} ${flashcardState.myHadithFlashcards[index].hadithNarratorName.getOrFailureText()} ${'Number'.tr}  ${flashcardState.myHadithFlashcards[index].hadithNumber.getOrCrash().toString()} ?',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: primaryTextFont
                                                            .copyWith(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 8.0),
                                                      ListTile(
                                                        onTap: () {
                                                          context.read<
                                                              HadithFlashcardBloc>()
                                                            ..add(
                                                              HadithFlashcardEvent
                                                                  .deleteFlashcard(
                                                                userID: userID,
                                                                flashcardID:
                                                                    UnemptyString(
                                                                  userID.getOrCrash() +
                                                                      flashcardState
                                                                          .myHadithFlashcards[
                                                                              index]
                                                                          .hadithNarratorName
                                                                          .getOrCrash() +
                                                                      flashcardState
                                                                          .myHadithFlashcards[
                                                                              index]
                                                                          .hadithNumber
                                                                          .getOrCrash()
                                                                          .toString(),
                                                                ),
                                                              ),
                                                            )
                                                            ..add(
                                                              HadithFlashcardEvent
                                                                  .deleteFromMyFlashcard(
                                                                flashcard:
                                                                    flashcardState
                                                                            .myHadithFlashcards[
                                                                        index],
                                                              ),
                                                            );
                                                          Navigator.pop(
                                                            context,
                                                          );
                                                        },
                                                        leading: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: redColor,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Icon(
                                                            size: 16.0,
                                                            Icons.delete,
                                                            color: colorScheme(
                                                                    context)
                                                                .background,
                                                          ),
                                                        ),
                                                        title: Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child:
                                                              AnimatedSwitcher(
                                                            switchInCurve:
                                                                Curves.easeIn,
                                                            duration:
                                                                const Duration(
                                                              milliseconds: 500,
                                                            ),
                                                            child: Text(
                                                              'delete'.tr,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      ListTile(
                                                        leading:
                                                            SvgPicture.asset(
                                                          AssetUrl.closeIcon,
                                                          height: 26.0,
                                                          color: primaryColor,
                                                        ),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);

                                                          context
                                                              .read<
                                                                  HadithFlashcardBloc>()
                                                              .add(
                                                                const HadithFlashcardEvent
                                                                    .resetFlashcardClarification(
                                                                  isShowClarification:
                                                                      false,
                                                                ),
                                                              );
                                                        },
                                                        title: Text(
                                                          'close'.tr,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 18.0),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(
                                          4.0,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: redColor,
                                            width: 3,
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.delete,
                                          size: 15.0,
                                          color: redColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 18.0,
                                        ),
                                        child: Text(
                                          flashcardState
                                              .myHadithFlashcards[index].arab
                                              .getOrCrash(),
                                          textAlign: TextAlign.right,
                                          style: arabicTextFont.copyWith(
                                            height: 1.6,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        flashcardState.myHadithFlashcards[index]
                                            .translation
                                            .getOrCrash(),
                                        style: greyTextFont.copyWith(
                                          fontSize: 12.0,
                                          height: 1.6,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

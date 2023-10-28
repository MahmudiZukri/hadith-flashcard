part of '../pages.dart';

class HadithPage extends StatelessWidget {
  const HadithPage({
    required this.userID,
    required this.hadithNarrator,
    super.key,
  });

  final UniqueString userID;
  final HadithNarrator hadithNarrator;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HadithNarratorBloc>(
          create: (context) => getIt<HadithNarratorBloc>()
            ..add(
              HadithNarratorEvent.getHadithByNarratorName(
                narratorName: hadithNarrator.slug,
              ),
            ),
        ),
        BlocProvider<HadithFlashcardBloc>(
          create: (context) => getIt<HadithFlashcardBloc>()
            ..add(
              HadithFlashcardEvent.getFlashcard(
                userID: userID,
              ),
            ),
        )
      ],
      child: HadithPageScaffold(
        userID: userID,
        hadithNarrator: hadithNarrator,
      ),
    );
  }
}

class HadithPageScaffold extends StatelessWidget {
  const HadithPageScaffold({
    required this.userID,
    required this.hadithNarrator,
    super.key,
  });

  final UniqueString userID;
  final HadithNarrator hadithNarrator;

  @override
  Widget build(BuildContext context) {
    final RefreshController refreshController = RefreshController();

    return Scaffold(
      appBar: CustomAppBarWidget(
        title: hadithNarrator.name.getOrCrash(),
        desc: '${hadithNarrator.total.getOrCrash()} hadiths',
        actions: [
          GestureDetector(
            onTap: () => context.read<PageBloc>().add(
                  GotoHomePage(
                    userID: userID,
                    pageIndex: 1,
                  ),
                ),
            child: Icon(
              MdiIcons.cardsOutline,
            ),
          ),
          const SizedBox(width: 12.0),
        ],
        leadingOnTap: () {
          // TODO: find out how to change the animation if we go to previous page like this event ( not really important )
          context.read<PageBloc>().add(
                GotoHomePage(
                  userID: userID,
                  pageIndex: 0,
                ),
              );
        },
      ),
      body: BlocConsumer<HadithNarratorBloc, HadithNarratorState>(
        listenWhen: (previous, current) =>
            previous.optionFailureOrHadithNarratorByName !=
            current.optionFailureOrHadithNarratorByName,
        listener: (context, hadithNarratorState) {
          hadithNarratorState.optionFailureOrHadithNarratorByName.match(
            () => null,
            (either) => either.fold(
              (l) => refreshController.loadFailed(),
              (r) => refreshController.loadComplete(),
            ),
          );
        },
        builder: (context, hadithNarratorState) {
          return BlocConsumer<HadithFlashcardBloc, HadithFlashcardState>(
            listener: (context, hadithFlashcardState) {
              hadithFlashcardState.optionFailureOrSaveFlashcard.match(
                () => null,
                (either) => either.fold(
                  (l) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      duration: const Duration(
                        milliseconds: 1700,
                      ),
                      content: Text(
                        'Something went wrong (${l.message})',
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      snackBar,
                    );

                    context.read<HadithFlashcardBloc>().add(
                          const HadithFlashcardEvent.resetFlashcardSnackBar(),
                        );
                  },
                  (r) {
                    final snackBar = SnackBar(
                      backgroundColor: primaryColor,
                      duration: const Duration(
                        milliseconds: 1700,
                      ),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: whiteColor,
                              ),
                              SizedBox(width: 12.0),
                              Text(
                                'Flashcard added successfully !',
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();

                              context.read<PageBloc>().add(
                                    GotoHomePage(
                                      userID: userID,
                                      pageIndex: 1,
                                    ),
                                  );
                            },
                            child: const Text(
                              'Review card',
                            ),
                          )
                        ],
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      snackBar,
                    );

                    context.read<HadithFlashcardBloc>()
                      ..add(
                        HadithFlashcardEvent.getFlashcard(userID: userID),
                      )
                      ..add(
                        const HadithFlashcardEvent.resetFlashcardSnackBar(),
                      );
                  },
                ),
              );
            },
            builder: (context, hadithFlashcardState) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultMargin / 2,
              ),
              child: SmartRefresher(
                controller: refreshController,
                onLoading: () {
                  context.read<HadithNarratorBloc>().add(
                        HadithNarratorEvent.getHadithByNarratorName(
                          narratorName: hadithNarrator.slug,
                          isNextPage: true,
                        ),
                      );
                },
                enablePullUp: hadithNarratorState.getPagination == null
                    ? false
                    : hadithNarratorState.getPagination!.currentPage
                            .getOrZero() <
                        hadithNarratorState.getPagination!.endPage.getOrZero(),
                child: ListView(
                  children: [
                    const SizedBox(height: 20.0),
                    Text(
                      'بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْم',
                      textAlign: TextAlign.center,
                      style: arabicTextFont,
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: lightColor,
                    ),
                    const SizedBox(height: 12.0),
                    hadithNarratorState.optionFailureOrHadithNarratorByName
                        .match(
                      () => Column(
                        children: List.generate(
                          6,
                          (index) => const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: CustomShimmerWidget(
                              height: 120.0,
                              width: double.infinity,
                              borderRadius: 14,
                            ),
                          ),
                        ),
                      ),
                      (either) => either.fold(
                        (l) => Text(
                          'Something went wrong (${l.message})',
                        ),
                        (_) => Column(
                          children: List.generate(
                            hadithNarratorState.hadiths.length,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      border: hadithFlashcardState.getFlashcards
                                              .where(
                                                (element) =>
                                                    element
                                                        .hadithNarratorName ==
                                                    hadithNarrator.name,
                                              )
                                              .map(
                                                (e) =>
                                                    e.hadithNumber.getOrZero(),
                                              )
                                              .contains(
                                                hadithNarratorState
                                                    .hadiths[index].number
                                                    .getOrCrash(),
                                              )
                                          ? Border.all(
                                              color: primaryColor,
                                              width: 3,
                                            )
                                          : Border.all(
                                              color: greyColor,
                                            ),
                                    ),
                                    child: Text(
                                      CommonUtils.replaceFarsiNumber(
                                        hadithNarratorState
                                            .hadiths[index].number
                                            .getOrCrash()
                                            .toString(),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
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
                                                      '${'Hadith'.tr()} ${hadithNarrator.name.getOrFailureText()} ${'Number'.tr()}  ${hadithNarratorState.hadiths[index].number.getOrCrash().toString()}',
                                                      style: primaryTextFont
                                                          .copyWith(
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 8.0),
                                                    ListTile(
                                                      leading: SvgPicture.asset(
                                                        AssetUrl.addIcon,
                                                        height: 26.0,
                                                        color: primaryColor,
                                                      ),
                                                      onTap: () {
                                                        if (hadithFlashcardState
                                                            .getFlashcards
                                                            .where(
                                                              (element) =>
                                                                  element
                                                                      .hadithNarratorName ==
                                                                  hadithNarrator
                                                                      .name,
                                                            )
                                                            .map(
                                                              (e) => e
                                                                  .hadithNumber
                                                                  .getOrZero(),
                                                            )
                                                            .contains(
                                                              hadithNarratorState
                                                                  .hadiths[
                                                                      index]
                                                                  .number
                                                                  .getOrCrash(),
                                                            )) {
                                                          context
                                                              .read<
                                                                  HadithFlashcardBloc>()
                                                              .add(
                                                                const HadithFlashcardEvent
                                                                    .resetFlashcardClarification(
                                                                  isShowClarification:
                                                                      true,
                                                                ),
                                                              );
                                                        } else {
                                                          context
                                                              .read<
                                                                  HadithFlashcardBloc>()
                                                              .add(
                                                                HadithFlashcardEvent
                                                                    .saveFlashcard(
                                                                  userID:
                                                                      userID,
                                                                  flashcard:
                                                                      HadithFlashcard(
                                                                    hadithNarratorName:
                                                                        hadithNarrator
                                                                            .name,
                                                                    hadithNumber: hadithNarratorState
                                                                        .hadiths[
                                                                            index]
                                                                        .number,
                                                                    arab: hadithNarratorState
                                                                        .hadiths[
                                                                            index]
                                                                        .arab,
                                                                    translation:
                                                                        hadithNarratorState
                                                                            .hadiths[index]
                                                                            .id,
                                                                    interval: 0,
                                                                    repetition:
                                                                        0,
                                                                    easeFactor:
                                                                        0,
                                                                    reviewedDate:
                                                                        DateTime
                                                                            .now(),
                                                                  ),
                                                                ),
                                                              );

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
                                                        }
                                                      },
                                                      title: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: AnimatedSwitcher(
                                                          switchInCurve:
                                                              Curves.easeIn,
                                                          duration:
                                                              const Duration(
                                                            milliseconds: 500,
                                                          ),
                                                          child: state
                                                                  .isShowResetFlashcardClarification
                                                              ? Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          const Text(
                                                                        'areYouSureWantToResetYourFlashcardProgress',
                                                                      ).tr(),
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        const SizedBox(
                                                                          width:
                                                                              20.0,
                                                                        ),
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            context.read<HadithFlashcardBloc>().add(
                                                                                  HadithFlashcardEvent.saveFlashcard(
                                                                                    userID: userID,
                                                                                    flashcard: HadithFlashcard(
                                                                                      hadithNarratorName: hadithNarrator.name,
                                                                                      hadithNumber: hadithNarratorState.hadiths[index].number,
                                                                                      arab: hadithNarratorState.hadiths[index].arab,
                                                                                      translation: hadithNarratorState.hadiths[index].id,
                                                                                      interval: 0,
                                                                                      repetition: 0,
                                                                                      easeFactor: 0,
                                                                                      reviewedDate: DateTime.now(),
                                                                                    ),
                                                                                  ),
                                                                                );

                                                                            Navigator.pop(context);

                                                                            context.read<HadithFlashcardBloc>().add(
                                                                                  const HadithFlashcardEvent.resetFlashcardClarification(
                                                                                    isShowClarification: false,
                                                                                  ),
                                                                                );
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            'yes',
                                                                            style:
                                                                                primaryTextFont.copyWith(
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ).tr(),
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              20.0,
                                                                        ),
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(
                                                                              context,
                                                                            );

                                                                            context.read<HadithFlashcardBloc>().add(
                                                                                  const HadithFlashcardEvent.resetFlashcardClarification(
                                                                                    isShowClarification: false,
                                                                                  ),
                                                                                );
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            'no',
                                                                            style:
                                                                                redTextFont.copyWith(
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ).tr(),
                                                                        ),
                                                                      ],
                                                                    )
                                                                  ],
                                                                )
                                                              : const Text(
                                                                  'addToFlashcard',
                                                                ).tr(),
                                                        ),
                                                      ),
                                                    ),
                                                    ListTile(
                                                      leading: SvgPicture.asset(
                                                        AssetUrl.closeIcon,
                                                        height: 26.0,
                                                        color: primaryColor,
                                                      ),
                                                      onTap: () {
                                                        Navigator.pop(context);

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
                                                      title: const Text(
                                                        'close',
                                                      ).tr(),
                                                    ),
                                                    const SizedBox(
                                                        height: 18.0),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        );
                                      },
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 18.0,
                                            ),
                                            child: Text(
                                              hadithNarratorState
                                                  .hadiths[index].arab
                                                  .getOrCrash(),
                                              textAlign: TextAlign.right,
                                              style: arabicTextFont.copyWith(
                                                height: 1.6,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            hadithNarratorState
                                                .hadiths[index].id
                                                .getOrCrash(),
                                            style: greyTextFont.copyWith(
                                              fontSize: 12.0,
                                              height: 1.6,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

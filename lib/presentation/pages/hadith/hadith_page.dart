part of '../pages.dart';

class HadithPage extends StatelessWidget {
  const HadithPage({
    required this.userID,
    required this.hadithNarrator,
    this.hadithNumber,
    super.key,
  });

  final UniqueString userID;
  final HadithNarrator hadithNarrator;
  final PositiveNumber? hadithNumber;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HadithNarratorBloc>(
          create: (context) => getIt<HadithNarratorBloc>()
            ..add(
              HadithNarratorEvent.getHadithsByNarratorName(
                narratorName: hadithNarrator.slug,
                hadithNumber: hadithNumber,
                limit: hadithNumber != null ? PositiveNumber(1) : null,
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
        ),
        BlocProvider<AdBloc>(
          create: (context) => getIt<AdBloc>()
            ..add(
              const AdEvent.loadAd(
                adEnum: EAd.hadithPageAd,
              ),
            ),
        )
      ],
      child: HadithPageScaffold(
        userID: userID,
        hadithNarrator: hadithNarrator,
        hadithNumber: hadithNumber,
      ),
    );
  }
}

class HadithPageScaffold extends StatelessWidget {
  const HadithPageScaffold({
    required this.userID,
    required this.hadithNarrator,
    required this.hadithNumber,
    super.key,
  });

  final UniqueString userID;
  final HadithNarrator hadithNarrator;
  final PositiveNumber? hadithNumber;

  @override
  Widget build(BuildContext context) {
    final RefreshController refreshController = RefreshController();

    return Scaffold(
      appBar: CustomAppBarWidget(
        title: hadithNarrator.name.getOrCrash(),
        desc: '${hadithNarrator.total.getOrCrash()} hadiths',
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
      body: BlocBuilder<RemoteConfigBloc, RemoteConfigState>(
        builder: (context, remoteConfigState) {
          return BlocBuilder<AdBloc, AdState>(
            builder: (context, adState) {
              return BlocConsumer<HadithNarratorBloc, HadithNarratorState>(
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
                  return BlocConsumer<HadithFlashcardBloc,
                      HadithFlashcardState>(
                    listener: (context, hadithFlashcardState) {
                      hadithFlashcardState.optionFailureOrSaveFlashcard.match(
                        () => null,
                        (either) => either.fold(
                          (l) {
                            CommonUtils.customSnackbar(
                              isSuccess: false,
                              message:
                                  '${'somethingWentWrong'.tr} (${l.message})',
                            );

                            context.read<HadithFlashcardBloc>().add(
                                  const HadithFlashcardEvent
                                      .resetFlashcardSnackBar(),
                                );
                          },
                          (r) {
                            CommonUtils.customSnackbar(
                              isSuccess: true,
                              message: 'flashcardAddedSuccessfully'.tr,
                              actionText: 'reviewCard'.tr,
                              actionOnTap: () {
                                Get.closeCurrentSnackbar();

                                Get.to(
                                  () => HomePage(
                                    userID: userID,
                                    pageIndex: 1,
                                  ),
                                );
                              },
                            );

                            context.read<HadithFlashcardBloc>()
                              ..add(
                                HadithFlashcardEvent.getFlashcard(
                                  userID: userID,
                                ),
                              )
                              ..add(
                                const HadithFlashcardEvent
                                    .resetFlashcardSnackBar(),
                              );
                          },
                        ),
                      );
                    },
                    builder: (context, hadithFlashcardState) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultMargin / 2,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: SmartRefresher(
                              controller: refreshController,
                              enablePullDown: false,
                              onLoading: hadithNumber != null
                                  ? () {}
                                  : () {
                                      context.read<HadithNarratorBloc>().add(
                                            HadithNarratorEvent
                                                .getHadithsByNarratorName(
                                              narratorName: hadithNarrator.slug,
                                              hadithNumber: hadithNumber,
                                              isNextPage: true,
                                            ),
                                          );
                                    },
                              enablePullUp: hadithNumber != null
                                  ? false
                                  : hadithNarratorState.getPagination == null
                                      ? false
                                      : hadithNarratorState
                                              .getPagination!.currentPage
                                              .getOrZero() <
                                          hadithNarratorState
                                              .getPagination!.endPage
                                              .getOrZero(),
                              child: ListView(
                                children: [
                                  const SizedBox(height: 22.0),
                                  SvgPicture.asset(
                                    AssetUrl.bismillahCalligraphy,
                                    height: 52.0,
                                    colorFilter: ColorFilter.mode(
                                      colorScheme().primary,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: lightColor,
                                  ),
                                  const SizedBox(height: 12.0),
                                  hadithNarratorState
                                      .optionFailureOrHadithNarratorByName
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
                                      (_) => ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount:
                                            hadithNarratorState.hadiths.length,
                                        itemBuilder: (context, index) =>
                                            Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                  8.0,
                                                  11.0,
                                                  8.0,
                                                  8.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: hadithFlashcardState
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
                                                                .hadiths[index]
                                                                .number
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
                                                  CommonUtils
                                                      .replaceFarsiNumber(
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
                                                    CustomModalBottomSheet(
                                                            context)
                                                        .show(
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
                                                          builder:
                                                              (context, state) {
                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Text(
                                                                  '${'Hadith'.tr} ${hadithNarrator.name.getOrFailureText()} ${'Number'.tr}  ${hadithNarratorState.hadiths[index].number.getOrCrash().toString()}',
                                                                  style: primaryTextFont
                                                                      .copyWith(
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                    height:
                                                                        8.0),
                                                                ListTile(
                                                                  leading:
                                                                      SvgPicture
                                                                          .asset(
                                                                    AssetUrl
                                                                        .addIcon,
                                                                    height:
                                                                        26.0,
                                                                    colorFilter:
                                                                        const ColorFilter
                                                                            .mode(
                                                                      primaryColor,
                                                                      BlendMode
                                                                          .srcIn,
                                                                    ),
                                                                  ),
                                                                  onTap: () {
                                                                    if (hadithFlashcardState
                                                                        .getFlashcards
                                                                        .where(
                                                                          (element) =>
                                                                              element.hadithNarratorName ==
                                                                              hadithNarrator.name,
                                                                        )
                                                                        .map(
                                                                          (e) => e
                                                                              .hadithNumber
                                                                              .getOrZero(),
                                                                        )
                                                                        .contains(
                                                                          hadithNarratorState
                                                                              .hadiths[index]
                                                                              .number
                                                                              .getOrCrash(),
                                                                        )) {
                                                                      context
                                                                          .read<
                                                                              HadithFlashcardBloc>()
                                                                          .add(
                                                                            const HadithFlashcardEvent.resetFlashcardClarification(
                                                                              isShowClarification: true,
                                                                            ),
                                                                          );
                                                                    } else {
                                                                      context
                                                                          .read<
                                                                              HadithFlashcardBloc>()
                                                                          .add(
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

                                                                      Navigator.pop(
                                                                          context);

                                                                      context
                                                                          .read<
                                                                              HadithFlashcardBloc>()
                                                                          .add(
                                                                            const HadithFlashcardEvent.resetFlashcardClarification(
                                                                              isShowClarification: false,
                                                                            ),
                                                                          );
                                                                    }
                                                                  },
                                                                  title: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        AnimatedSwitcher(
                                                                      switchInCurve:
                                                                          Curves
                                                                              .easeIn,
                                                                      duration:
                                                                          const Duration(
                                                                        milliseconds:
                                                                            500,
                                                                      ),
                                                                      child: state
                                                                              .isShowResetFlashcardClarification
                                                                          ? Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    'areYouSureWantToResetYourFlashcardProgress'.tr,
                                                                                    style: const TextStyle(
                                                                                      fontSize: 14.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  children: [
                                                                                    const SizedBox(
                                                                                      width: 20.0,
                                                                                    ),
                                                                                    GestureDetector(
                                                                                      onTap: () {
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
                                                                                      child: Text(
                                                                                        'yes'.tr,
                                                                                        style: primaryTextFont.copyWith(
                                                                                          fontWeight: FontWeight.w700,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    const SizedBox(
                                                                                      width: 20.0,
                                                                                    ),
                                                                                    GestureDetector(
                                                                                      onTap: () {
                                                                                        Navigator.pop(
                                                                                          context,
                                                                                        );

                                                                                        context.read<HadithFlashcardBloc>().add(
                                                                                              const HadithFlashcardEvent.resetFlashcardClarification(
                                                                                                isShowClarification: false,
                                                                                              ),
                                                                                            );
                                                                                      },
                                                                                      child: Text(
                                                                                        'no'.tr,
                                                                                        style: redTextFont.copyWith(
                                                                                          fontWeight: FontWeight.w700,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                )
                                                                              ],
                                                                            )
                                                                          : Text(
                                                                              'addToFlashcard'.tr,
                                                                              style: const TextStyle(
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                ListTile(
                                                                  leading:
                                                                      SvgPicture
                                                                          .asset(
                                                                    AssetUrl
                                                                        .closeIcon,
                                                                    height:
                                                                        26.0,
                                                                    colorFilter:
                                                                        const ColorFilter
                                                                            .mode(
                                                                      redColor,
                                                                      BlendMode
                                                                          .srcIn,
                                                                    ),
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
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 18.0,
                                                                ),
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
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 18.0,
                                                        ),
                                                        child: Text(
                                                          hadithNarratorState
                                                              .hadiths[index]
                                                              .arab
                                                              .getOrCrash(),
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: arabicTextFont
                                                              .copyWith(
                                                            height: 1.6,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 8.0),
                                                      Get.locale.toString() ==
                                                              ELanguage
                                                                  .indonesia
                                                                  .locale
                                                          ? Text(
                                                              hadithNarratorState
                                                                  .hadiths[
                                                                      index]
                                                                  .id
                                                                  .getOrCrash(),
                                                              style: adaptiveTextFont(
                                                                      applyOpacity:
                                                                          true)
                                                                  .copyWith(
                                                                fontSize: 12.0,
                                                                height: 1.6,
                                                              ),
                                                            )
                                                          : const SizedBox()
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          // Hadith page banner ads
                          if (remoteConfigState.isEnableAds &&
                              adState.hadithPageBannerAd != null)
                            CustomAdWidget(
                              bannerAd: adState.hadithPageBannerAd!,
                            ),
                        ],
                      ),
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

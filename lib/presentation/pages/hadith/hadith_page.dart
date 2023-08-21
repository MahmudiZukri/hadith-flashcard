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
              HadithNarratorEvent.getHadithNarratorByName(
                narratorName: hadithNarrator.slug,
              ),
            ),
        ),
        BlocProvider<HadithFlashcardBloc>(
          create: (context) => getIt<HadithFlashcardBloc>(),
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
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: hadithNarrator.name.getOrCrash(),
        desc: '${hadithNarrator.total.getOrCrash()} hadiths',
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
      body: BlocBuilder<HadithNarratorBloc, HadithNarratorState>(
        builder: (context, hadithNarratorState) {
          return BlocListener<HadithFlashcardBloc, HadithFlashcardState>(
            listener: (context, hadithFlashcardState) {
              hadithFlashcardState.optionFailureOrSaveFlashcardSuccess.match(
                () => null,
                (either) => either.fold(
                  (l) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      duration: const Duration(
                        milliseconds: 1500,
                      ),
                      content: Text(
                        'Something went wrong (${l.message})',
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      snackBar,
                    );
                  },
                  (r) {
                    const snackBar = SnackBar(
                      backgroundColor: primaryColor,
                      duration: Duration(
                        milliseconds: 1500,
                      ),
                      content: Row(
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
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      snackBar,
                    );
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultMargin / 2,
              ),
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
                  hadithNarratorState.optionFailureOrHadithNarratorByName.match(
                    // TODO : change to a better shimmer ( widget already created )
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
                      (hadithNarrator) => Column(
                        children: List.generate(
                          hadithNarrator.items?.length ?? 1,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
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
                                    border: Border.all(color: greyColor),
                                  ),
                                  child: Text(
                                    CommonUtils.replaceFarsiNumber(
                                      hadithNarrator.items?[index].number
                                              .getOrCrash()
                                              .toString() ??
                                          '',
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      CustomModalBottomSheet(context).show(
                                        widget: BlocProvider<
                                            HadithFlashcardBloc>.value(
                                          value: BlocProvider.of<
                                              HadithFlashcardBloc>(
                                            context,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const SizedBox(height: 18.0),
                                              Container(
                                                height: 3,
                                                width: 36.0,
                                                color: lightGreyColor,
                                              ),
                                              const SizedBox(height: 6.0),
                                              ListTile(
                                                leading: SvgPicture.asset(
                                                  'assets/icon/add_icon.svg',
                                                  height: 26.0,
                                                  color: primaryColor,
                                                ),
                                                onTap: () {
                                                  context
                                                      .read<
                                                          HadithFlashcardBloc>()
                                                      .add(
                                                        HadithFlashcardEvent
                                                            .saveFlashcard(
                                                          userID: userID,
                                                          flashcard:
                                                              HadithFlashcardModel(
                                                            question:
                                                                "What's the content of ${hadithNarrator.name.getOrCrash()} ${hadithNarrator.items?[index].number.getOrCrash()}",
                                                            answer:
                                                                '${hadithNarrator.items?[index].arab.getOrCrash()}',
                                                            translation:
                                                                '${hadithNarrator.items?[index].id.getOrCrash()}',
                                                            reviewedDate:
                                                                DateTime.now(),
                                                          ),
                                                        ),
                                                      );

                                                  Navigator.pop(context);
                                                },
                                                title: const Text(
                                                  'Add to flashcard',
                                                ),
                                              ),
                                              ListTile(
                                                leading: SvgPicture.asset(
                                                  'assets/icon/close_icon.svg',
                                                  height: 26.0,
                                                  color: primaryColor,
                                                ),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                title: const Text(
                                                  'Close',
                                                ),
                                              ),
                                              const SizedBox(height: 18.0),
                                            ],
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
                                            hadithNarrator.items?[index].arab
                                                    .getOrCrash() ??
                                                '',
                                            textAlign: TextAlign.right,
                                            style: arabicTextFont.copyWith(
                                              height: 1.6,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8.0),
                                        Text(
                                          hadithNarrator.items?[index].id
                                                  .getOrCrash() ??
                                              '',
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
          );
        },
      ),
    );
  }
}

part of '../../pages.dart';

class NarratorPage extends StatelessWidget {
  const NarratorPage({
    required this.userID,
    super.key,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HadithFlashcardBloc, HadithFlashcardState>(
      builder: (context, hadithFlashcardState) {
        return BlocConsumer<HadithNarratorBloc, HadithNarratorState>(
          listenWhen: (previous, current) =>
              previous.optionFailureOrHadithNarratorByName !=
                  current.optionFailureOrHadithNarratorByName ||
              current.isSearching == true,
          listener: (context, hadithNarratorState) {
            hadithNarratorState.optionFailureOrHadithNarratorByName.match(
              () => null,
              (either) => either.fold(
                (l) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: redColor,
                      duration: const Duration(
                        seconds: 2,
                      ),
                      content: Text(
                        l.maybeMap(
                          handledByFirebase: (s) => s.message,
                          orElse: () =>
                              '${'somethingWentWrong'.tr()} (${l.message}).',
                        ),
                      ),
                    ),
                  );
                },
                (hadithNarrator) {
                  Get.to(
                    () => HadithPage(
                      userID: userID,
                      hadithNarrator: hadithNarrator,
                      hadithNumber: hadithNarratorState.hadithNumber,
                    ),
                  );
                },
              ),
            );
          },
          builder: (context, hadithNarratorState) {
            return hadithNarratorState.optionFailureOrHadithNarrators.match(
              // Hadith narrator shimmer
              () => const HadithNarratorShimmer(),
              (either) => either.fold(
                (l) => Text(
                  l.message,
                ),
                (hadithNarrators) => Column(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: defaultMargin,
                        ),
                        child: Flexible(
                          child: Column(
                            children: [
                              const Flexible(child: SizedBox(height: 14.0)),
                              // Title
                              Text(
                                'hadithNarrators',
                                style: whiteTextFont.copyWith(
                                  fontSize: 20.0,
                                  letterSpacing: 3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ).tr(),
                              const Flexible(child: SizedBox(height: 24.0)),
                              // Narrator filter and search section
                              NarratorFilterAndSearchRow(
                                hadithNarrators: hadithNarrators,
                                selectedNarratorName:
                                    hadithNarratorState.selectedNarrator,
                                isSearching: hadithNarratorState.isSearching,
                                isEnabled: hadithNarratorState
                                            .selectedNarrator !=
                                        null &&
                                    hadithNarratorState.hadithNumber != null,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Main container
                    const SizedBox(height: 16.0),
                    Expanded(
                      flex: 8,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        padding: const EdgeInsets.fromLTRB(
                          14,
                          14,
                          14,
                          0,
                        ),
                        decoration: const BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              45.0,
                            ),
                            topLeft: Radius.circular(
                              45.0,
                            ),
                          ),
                        ),
                        child: ListView(
                          children: [
                            ...List.generate(
                              hadithNarrators.length,
                              (index) => CustomListTile(
                                dense: true,
                                title: hadithNarrators[index].name.getOrCrash(),
                                titleFontSize: 14,
                                subtitle: '${CommonUtils.currencyFormat(
                                  hadithNarrators[index].total.getOrCrash(),
                                  showSymbol: false,
                                )} ${'hadith'.tr()}',
                                onTap: () {
                                  Get.to(
                                    () => HadithPage(
                                      userID: userID,
                                      hadithNarrator: hadithNarrators[index],
                                    ),
                                  );
                                },
                                trailing: hadithFlashcardState
                                            .getFlashcardIsLoading ||
                                        !hadithFlashcardState
                                            .getLengthOfSavedFlashcardByNarratorName
                                            .contains(
                                          hadithNarrators[index]
                                              .name
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
                                                    .map((element) => element ==
                                                            hadithNarrators[
                                                                    index]
                                                                .name
                                                                .getOrEmpty()
                                                        ? 1
                                                        : 0)
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
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class HadithNarratorShimmer extends StatelessWidget {
  const HadithNarratorShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: ListView(
        children: [
          const SizedBox(height: 14.0),
          ...List.generate(
            10,
            (index) => const Padding(
              padding: EdgeInsets.only(
                top: 34,
              ),
              child: CustomShimmerWidget(
                height: 48.0,
                width: double.infinity,
                borderRadius: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NarratorFilterAndSearchRow extends StatelessWidget {
  const NarratorFilterAndSearchRow({
    required this.selectedNarratorName,
    required this.hadithNarrators,
    required this.isSearching,
    required this.isEnabled,
    super.key,
  });

  final HadithNarrator? selectedNarratorName;
  final IList<HadithNarrator> hadithNarrators;
  final bool isSearching;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomDropdownButtonWidget<HadithNarrator>(
              borderColor: whiteColor,
              // width: (screenWidth(context) - 2 * defaultMargin - 20) / 2,
              backgroundColor: whiteColor.withOpacity(0.5),
              value: selectedNarratorName,
              hint: Text(
                'chooseNarrator',
                style: blackTextFont.copyWith(
                  color: blackColor.withOpacity(
                    0.5,
                  ),
                ),
              ).tr(),
              items: hadithNarrators
                  .map(
                    (element) => DropdownMenuItem<HadithNarrator>(
                      value: element,
                      child: Text(
                        element.name.getOrCrash(),
                      ),
                    ),
                  )
                  .toList(),
              borderRadius: mediumBorderRadius(),
              onChanged: (val) {
                if (val != null) {
                  context.read<HadithNarratorBloc>().add(
                        HadithNarratorEvent.narratorFilterChanged(
                          selectedNarrator: val,
                        ),
                      );
                }
              },
            ),
            const SizedBox(width: 20.0),
            CustomSearchWidget(
              height: 45,
              hintText: 'Hadith number',
              borderColor: whiteColor,
              iconColor: whiteColor,
              fontColor: blackColor,
              borderRadius: mediumBorderRadius(),
              // width: (screenWidth(context) - 2 * defaultMargin - 20) / 2,
              backgroundColor: whiteColor.withOpacity(0.5),
              hintFontSize: 14.0,
              hintColor: blackColor.withOpacity(0.5),
              onChanged: (val) {
                context.read<HadithNarratorBloc>().add(
                      HadithNarratorEvent.hadithNumberSearch(
                        number: val == ''
                            ? null
                            : PositiveNumber(
                                int.parse(
                                  val,
                                ),
                              ),
                      ),
                    );
              },
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        CustomElevatedButtonWidget(
          text: 'Search',
          isEnabled: isEnabled,
          isWithBorder: true,
          isLoading: isSearching,
          backgroundColor: whiteColor.withOpacity(0.5),
          disabledBackgroundColor: greyColor.withOpacity(0.5),
          textStyle: blackTextFont,
          disabledTextColor: whiteColor.withOpacity(0.5),
          disabledBorderColor: whiteColor.withOpacity(0.5),
          onPressed: () {
            // Search hadith
            context.read<HadithNarratorBloc>().add(
                  const HadithNarratorEvent.searchHadith(),
                );
          },
        )
      ],
    );
  }
}

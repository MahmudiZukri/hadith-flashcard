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
        return BlocBuilder<HadithNarratorBloc, HadithNarratorState>(
          builder: (context, hadithNarratorState) {
            return hadithNarratorState.optionFailureOrHadithNarrators.match(
              // Hadith narrator shimmer
              () => const HadithNarratorShimmer(),
              (either) => either.fold(
                (l) => Text(
                  l.message,
                ),
                (hadithNarrators) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: defaultMargin,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 14.0),
                          // Title
                          Text(
                            'hadithNarrators',
                            style: whiteTextFont.copyWith(
                              fontSize: 20.0,
                              letterSpacing: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ).tr(),
                          const SizedBox(height: 24.0),
                          // Narrator filter and search section
                          NarratorFilterAndSearchRow(
                            selectedNarratorName: hadithNarratorState
                                    .selectedNarratorName
                                    .getOrNull() ??
                                hadithNarrators.first.name.getOrCrash(),
                            hadithNarrators: hadithNarrators,
                          ),
                          const SizedBox(height: 30.0),
                        ],
                      ),
                    ),
                    // Main container
                    Expanded(
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
                                  context.read<PageBloc>().add(
                                        GotoHadithPage(
                                          userID: userID,
                                          hadithNarrator:
                                              hadithNarrators[index],
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
    super.key,
  });

  final String selectedNarratorName;
  final IList<HadithNarrator> hadithNarrators;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomDropdownButtonWidget(
              borderColor: whiteColor,
              width: (screenWidth(context) - 2 * defaultMargin - 20) / 2,
              backgroundColor: whiteColor.withOpacity(0.5),
              value: selectedNarratorName,
              items: hadithNarrators
                  .map(
                    (element) => DropdownMenuItem(
                      value: element.name.getOrCrash(),
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
                          narratorName: UniqueString.fromUniqueString(
                            val,
                          ),
                        ),
                      );
                }
              },
            ),
            const SizedBox(width: 20.0),
            //TODO: implement later
            CustomSearchWidget(
              height: 45,
              hintText: 'Hadith number',
              borderColor: whiteColor,
              iconColor: whiteColor,
              fontColor: blackColor,
              borderRadius: mediumBorderRadius(),
              width: (screenWidth(context) - 2 * defaultMargin - 20) / 2,
              backgroundColor: whiteColor.withOpacity(0.5),
              hintFontSize: 14.0,
              hintColor: blackColor.withOpacity(0.5),
              onChanged: (val) {
                context.read<HadithNarratorBloc>().add(
                      HadithNarratorEvent.hadithNumberSearch(
                        numberText: UnemptyString(
                          val,
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
          isWithBorder: true,
          backgroundColor: whiteColor.withOpacity(0.5),
          textStyle: blackTextFont,
          onPressed: () {},
        )
      ],
    );
  }
}

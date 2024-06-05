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
                  CommonUtils.customSnackbar(
                    isSuccess: false,
                    message: '${'somethingWentWrong'.tr} (${l.message})',
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
                (l) =>
                    // Refresh button
                    Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        l.message,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorScheme().primary,
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      CustomElevatedButtonWidget(
                        text: 'refresh'.tr,
                        backgroundColor: primaryColor,
                        textStyle: adaptiveTextFont().copyWith(
                          color: colorScheme().inversePrimary,
                          fontWeight: FontWeight.w600,
                        ),
                        onPressed: () {
                          context.read<HadithNarratorBloc>().add(
                                const HadithNarratorEvent.getHadithNarrators(),
                              );
                        },
                      ),
                    ],
                  ),
                ),
                (hadithNarrators) => Column(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: defaultMargin,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 14.0),
                            // Title
                            Text(
                              'hadithNarrators'.tr,
                              style: adaptiveTextFont().copyWith(
                                fontSize: 20.0,
                                letterSpacing: 3,
                                color: colorScheme().inversePrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Flexible(child: SizedBox(height: 24.0)),
                            // Narrator filter and search section
                            NarratorFilterAndSearchRow(
                              hadithNarrators: hadithNarrators,
                              selectedNarratorName:
                                  hadithNarratorState.selectedNarrator,
                              isSearching: hadithNarratorState.isSearching,
                              isEnabled: hadithNarratorState.selectedNarrator !=
                                      null &&
                                  hadithNarratorState.hadithNumber != null,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),

                    // Main container
                    Expanded(
                      flex: 8,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        padding: const EdgeInsets.all(
                          20,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme().surface,
                          borderRadius: const BorderRadius.only(
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
                                titleFontSize: 14,
                                title: hadithNarrators[index].name.getOrCrash(),
                                contentPadding: EdgeInsets.only(
                                  bottom: index == hadithNarrators.length - 1
                                      ?
                                      // Space for bottom nav bar
                                      screenHeight() / 10
                                      : 0,
                                ),
                                subtitle: '${CommonUtils.currencyFormat(
                                  hadithNarrators[index].total.getOrCrash(),
                                  showSymbol: false,
                                )} ${'hadith'.tr}',
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
                                    : CustomNumberContainerWidget(
                                        number: hadithFlashcardState
                                            .getLengthOfSavedFlashcardByNarratorName
                                            .map((element) => element ==
                                                    hadithNarrators[index]
                                                        .name
                                                        .getOrEmpty()
                                                ? 1
                                                : 0)
                                            .reduce(
                                              (value, element) =>
                                                  value + element,
                                            ),
                                      ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
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
              borderColor: colorScheme().surface,
              backgroundColor: colorScheme().surface,
              value: selectedNarratorName,
              hint: Text(
                'chooseNarrator'.tr,
              ),
              items: hadithNarrators
                  .map(
                    (element) => DropdownMenuItem<HadithNarrator>(
                      value: element,
                      child: Text(
                        element.name.getOrCrash(),
                        style: adaptiveTextFont().copyWith(
                          color: colorScheme().primary,
                        ),
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
              isDense: true,
              hintFontSize: 14.0,
              fontColor: blackColor,
              hintText: 'hadithNumber'.tr,
              contentPadding: EdgeInsets.zero,
              borderRadius: mediumBorderRadius(),
              iconColor: colorScheme().surface,
              borderColor: colorScheme().surface,
              backgroundColor: colorScheme().surface.withOpacity(0.5),
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
          backgroundColor: colorScheme().surface.withOpacity(0.5),
          disabledBackgroundColor: greyColor.withOpacity(0.5),
          textStyle: adaptiveTextFont(),
          disabledTextColor: colorScheme().surface.withOpacity(0.5),
          disabledBorderColor: colorScheme().surface.withOpacity(0.5),
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

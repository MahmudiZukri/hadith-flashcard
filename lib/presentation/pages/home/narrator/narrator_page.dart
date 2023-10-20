part of '../../pages.dart';

class NarratorPage extends StatelessWidget {
  const NarratorPage({
    required this.userID,
    super.key,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HadithNarratorBloc, HadithNarratorState>(
      builder: (context, hadithNarratorState) {
        return hadithNarratorState.optionFailureOrHadithNarrators.match(
          () => Padding(
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
          ),
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
                      Text(
                        'hadithNarrators',
                        style: whiteTextFont.copyWith(
                          fontSize: 20.0,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                        ),
                      ).tr(),
                      const SizedBox(height: 24.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomDropdownButtonWidget(
                            borderColor: whiteColor,
                            backgroundColor: whiteColor.withOpacity(0.5),
                            value: hadithNarrators.first.name.getOrCrash(),
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
                            onChanged: (val) {},
                          ),
                          //TODO: implement later
                          CustomSearchWidget(
                            height: 45,
                            borderColor: whiteColor,
                            iconColor: whiteColor,
                            fontColor: blackColor,
                            borderRadius: mediumBorderRadius(),
                            width: screenWidth(context) / 2.2,
                            backgroundColor: whiteColor.withOpacity(0.5),
                            hintFontSize: 14.0,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
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
                      children: List.generate(
                        hadithNarrators.length,
                        (index) => CustomListTile(
                          dense: true,
                          title: hadithNarrators[index].name.getOrCrash(),
                          subtitle: hadithNarrators[index]
                              .total
                              .getOrCrash()
                              .toString(),
                          onTap: () {
                            context.read<PageBloc>().add(
                                  GotoHadithPage(
                                    userID: userID,
                                    hadithNarrator: hadithNarrators[index],
                                  ),
                                );
                          },
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
    );
  }
}

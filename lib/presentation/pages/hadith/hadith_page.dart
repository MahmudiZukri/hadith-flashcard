part of '../pages.dart';

class HadithPage extends StatelessWidget {
  const HadithPage({
    required this.hadithNarrator,
    super.key,
  });

  final HadithNarrator hadithNarrator;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HadithNarratorBloc>(
      create: (context) => getIt<HadithNarratorBloc>()
        ..add(
          HadithNarratorEvent.getHadithNarratorByName(
            narratorName: hadithNarrator.slug,
          ),
        ),
      child: HadithPageScaffold(
        hadithNarrator: hadithNarrator,
      ),
    );
  }
}

class HadithPageScaffold extends StatelessWidget {
  const HadithPageScaffold({
    required this.hadithNarrator,
    super.key,
  });

  final HadithNarrator hadithNarrator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: makes appbar reusable later (makes its own widget)
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        leadingWidth: screenWidth(context) / 4,
        leading:
            // TODO: makes this reusable later (makes its own widget)

            GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            // TODO: find out how to change the animation if we go to previous page like this event
            context.read<PageBloc>().add(
                  const GotoHomePage(
                    pageIndex: 0,
                  ),
                );
          },
          child: Row(
            children: [
              const SizedBox(width: 12.0),
              Icon(MdiIcons.arrowLeft, size: 20.0),
              const SizedBox(width: 8.0),
              Text(
                'Back',
                style: whiteTextFont.copyWith(fontSize: 14.0),
              ),
            ],
          ),
        ),

        //TODO: change later
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              hadithNarrator.name.getOrCrash(),
              style: whiteTextFont.copyWith(
                fontSize: 18.0,
              ),
            ),
            Text(
              '${hadithNarrator.total.getOrCrash()} hadiths',
              style: greyTextFont.copyWith(
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<HadithNarratorBloc, HadithNarratorState>(
        builder: (context, hadithNarratorState) {
          return Padding(
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
                  // TODO: temp text
                  () => const Text(
                    'Kosong',
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
                                    8.0, 11.0, 8.0, 8.0),
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
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20.0,
                                      ),
                                      child: Text(
                                        hadithNarrator.items?[index].arab
                                                .getOrCrash() ??
                                            '',
                                        textAlign: TextAlign.right,
                                        style: arabicTextFont,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    Text(
                                      hadithNarrator.items?[index].id
                                              .getOrCrash() ??
                                          '',
                                      style: greyTextFont.copyWith(
                                        fontSize: 12.0,
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
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

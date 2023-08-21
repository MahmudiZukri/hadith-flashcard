part of '../../pages.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // comment for now
          // Row(
          //   children: [
          //     const Text('55 Hadiths'),
          //     const SizedBox(width: 10.0),
          //     Container(
          //       height: 10.0,
          //       width: screenWidth(context) / 3,
          //       decoration: BoxDecoration(
          //         color: secondaryColor,
          //         borderRadius: BorderRadius.circular(
          //           10.0,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 18,
                    width: 18,
                    margin: EdgeInsets.only(right: index == 2 ? 0 : 50),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Text('Reviewing')
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: BlocBuilder<HadithFlashcardBloc, HadithFlashcardState>(
                builder: (context, hadithFlashcardState) {
                  return Container(
                    height: screenHeight(context) / 2,
                    width: screenWidth(context) - (screenWidth(context) / 6),
                    padding: const EdgeInsets.all(
                      defaultMargin,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: largeBorderRadius(),
                    ),
                    child: hadithFlashcardState
                        .optionFailureOrGetFlashcardSuccess
                        .match(
                      () => const CustomCircularProgressIndicatorWidget(),
                      (either) => either.fold(
                        (l) => Text(
                          l.message,
                        ),
                        (flashcards) => Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                flashcards.first.answer.getOrCrash(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

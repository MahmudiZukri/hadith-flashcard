part of '../../pages.dart';

class MyFlashcardHadithPage extends StatelessWidget {
  const MyFlashcardHadithPage({
    // TODO : userID is for deleting flashcard I guess, make sure
    required this.userID,
    required this.flashcards,
    super.key,
  });

  final UniqueString userID;
  final IList<HadithFlashcard> flashcards;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: flashcards.first.hadithNarratorName.getOrCrash(),
        desc: '${flashcards.length} hadiths',
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
          context.read<PageBloc>().add(
                GotoMyFlashcardNarratorPage(
                  userID: userID,
                ),
              );
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
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 1,
              width: double.infinity,
              color: lightColor,
            ),
            const SizedBox(height: 12.0),
            Column(
              children: List.generate(
                flashcards.length,
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
                          border: Border.all(
                            color: primaryColor,
                            width: 3,
                          ),
                        ),
                        child: Text(
                          CommonUtils.replaceFarsiNumber(
                            flashcards[index]
                                .hadithNumber
                                .getOrCrash()
                                .toString(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // hadith on tap
                            // delete
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 18.0,
                                ),
                                child: Text(
                                  flashcards[index].arab.getOrCrash(),
                                  textAlign: TextAlign.right,
                                  style: arabicTextFont.copyWith(
                                    height: 1.6,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                flashcards[index].translation.getOrCrash(),
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
          ],
        ),
      ),
    );
  }
}

part of 'widgets.dart';

class CustomFlipCard extends StatelessWidget {
  const CustomFlipCard({
    required this.card,
    required this.controller,
    required this.selectedLanguage,
    super.key,
  });
  final HadithFlashcard card;
  final FlipCardController controller;
  final ELanguage selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      speed: 400,
      controller: controller,
      direction: FlipDirection.HORIZONTAL,
      front: CustomContainer(
        color: whiteColor,
        child: Center(
          child: Text(
            '${selectedLanguage.questionPrefix} ${card.hadithNarratorName.getOrFailureText()} ${card.hadithNumber.getOrZero()} ?',
            style: blackTextFont.copyWith(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      back: RawScrollbar(
        child: CustomContainer(
          color: whiteColor,
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Text(
                card.arab.getOrFailureText(),
                style: arabicTextFont.copyWith(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

part of 'widgets.dart';

class CustomFlipCard extends StatelessWidget {
  const CustomFlipCard({
    required this.cardModel,
    required this.controller,
    super.key,
  });

  final HadithFlashcard cardModel;
  final FlipCardController controller;

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
            // (context.locale.toString() == 'en_US' &&
            //         widget.cardModel.question[0] == 'A')
            //     ? widget.cardModel.question
            //         .replaceAll('Apa bunyi dari', 'What is the content of')
            //     : (context.locale.toString() == 'id' &&
            //             widget.cardModel.question[0] == 'W')
            //         ? widget.cardModel.question
            //             .replaceAll(
            // 'What is the content of',
            // 'Apa bunyi dari',
            // )
            // : widget.cardModel.question,
            'temp question',
            style: blackTextFont.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      back: RawScrollbar(
        child: CustomContainer(
          // color: primaryColor,
          color: whiteColor,
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Text(
                cardModel.answer.getOrCrash(),
                style: blackTextFont.copyWith(
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

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
        color: colorScheme().background,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: greyColor,
                shape: BoxShape.circle,
              ),
              child: GestureDetector(
                onTap: () {
                  CommonUtils.openCustomDialog(
                    context: context,
                    title: Text(
                      'help'.tr,
                      style: adaptiveTextFont.copyWith(
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'helpSection'.tr,
                          style: greyTextFont.copyWith(
                            fontSize: 13.0,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        SizedBox(
                          width: double.infinity,
                          child: Table(
                            columnWidths: const {
                              0: FractionColumnWidth(0.06),
                              1: FractionColumnWidth(0.05)
                            },
                            children: [
                              TableRow(
                                children: [
                                  Text('0',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(':',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(
                                    'quality0'.tr,
                                    style: greyTextFont.copyWith(
                                      fontSize: 13.0,
                                    ),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text('1',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(':',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(
                                    'quality1'.tr,
                                    style: greyTextFont.copyWith(
                                      fontSize: 13.0,
                                    ),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text('2',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(':',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(
                                    'quality2'.tr,
                                    style: greyTextFont.copyWith(
                                      fontSize: 13.0,
                                    ),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text('3',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(':',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(
                                    'quality3'.tr,
                                    style: greyTextFont.copyWith(
                                      fontSize: 13.0,
                                    ),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text('4',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(':',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(
                                    'quality4'.tr,
                                    style: greyTextFont.copyWith(
                                      fontSize: 13.0,
                                    ),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text('5',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(':',
                                      style: greyTextFont.copyWith(
                                        fontSize: 13.0,
                                      )),
                                  Text(
                                    'quality5'.tr,
                                    style: greyTextFont.copyWith(
                                      fontSize: 13.0,
                                    ),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        // Close button
                        CustomElevatedButtonWidget(
                          text: 'close'.tr,
                          backgroundColor: primaryColor,
                          textStyle: adaptiveTextFont.copyWith(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(height: 12.0),
                      ],
                    ),
                  );
                },
                child: Icon(
                  // Question mark icon
                  Icons.question_mark_rounded,
                  size: 16.0,
                  color: colorScheme().background,
                ),
              ),
            ),
            Center(
              child: Text(
                '${selectedLanguage.questionPrefix} ${card.hadithNarratorName.getOrFailureText()} ${card.hadithNumber.getOrZero()} ?',
                style: adaptiveTextFont.copyWith(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      back: RawScrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        fadeDuration: const Duration(seconds: 3),
        padding: EdgeInsets.only(top: screenHeight() / 24),
        child: CustomContainer(
          color: colorScheme().background,
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

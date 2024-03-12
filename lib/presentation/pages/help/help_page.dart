part of '../pages.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({
    super.key,
    // delete after change router
    required this.userID,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'help'.tr,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(
                () => HomePage(
                  userID: userID,
                  pageIndex: 1,
                ),
              );
            },
            child: Icon(
              MdiIcons.cardsOutline,
              color: colorScheme().inversePrimary,
            ),
          ),
          const SizedBox(width: 12.0),
        ],
        leadingOnTap: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin / 1.5,
        ),
        child: Column(
          children: [
            const SizedBox(height: 22.0),
            Text(
              'helpSection'.tr,
              style: adaptiveTextFont.copyWith(height: 1.6),
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) => Container(
                  height: 44,
                  width: ((screenWidth() - defaultMargin * 2) / 6) - 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: index > 2 ? primaryColor : redColor,
                  ),
                  child: Center(
                    child: Text(
                      '$index',
                      style: adaptiveTextFont.copyWith(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: colorScheme().inversePrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
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
                      Text(
                        '0',
                        style: adaptiveTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: adaptiveTextFont,
                      ),
                      Text(
                        'quality0'.tr,
                        style: adaptiveTextFont,
                        maxLines: 2,
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '1',
                        style: adaptiveTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: adaptiveTextFont,
                      ),
                      Text(
                        'quality1'.tr,
                        style: adaptiveTextFont,
                        maxLines: 2,
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '2',
                        style: adaptiveTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: adaptiveTextFont,
                      ),
                      Text(
                        'quality2'.tr,
                        style: adaptiveTextFont,
                        maxLines: 2,
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '3',
                        style: adaptiveTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: adaptiveTextFont,
                      ),
                      Text(
                        'quality3'.tr,
                        style: adaptiveTextFont,
                        maxLines: 2,
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '4',
                        style: adaptiveTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: adaptiveTextFont,
                      ),
                      Text(
                        'quality4'.tr,
                        style: adaptiveTextFont,
                        maxLines: 2,
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '5',
                        style: adaptiveTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: adaptiveTextFont,
                      ),
                      Text(
                        'quality5'.tr,
                        style: adaptiveTextFont,
                        maxLines: 2,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
        title: 'help'.tr(),
        actions: [
          GestureDetector(
            onTap: () => context.read<PageBloc>().add(
                  GotoHomePage(
                    // delete after change router
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
                GotoHomePage(
                  // delete after change router
                  userID: userID,
                  pageIndex: 2,
                ),
              );
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
              'helpSection',
              style: blackTextFont.copyWith(height: 1.6),
            ).tr(),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) => Container(
                  height: 44,
                  width: ((screenWidth(context) - defaultMargin * 2) / 6) - 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: index > 2 ? primaryColor : redColor,
                  ),
                  child: Center(
                    child: Text(
                      '$index',
                      style: whiteTextFont.copyWith(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
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
                        style: blackTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: blackTextFont,
                      ),
                      Text(
                        'quality0',
                        style: blackTextFont,
                        maxLines: 2,
                      ).tr()
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '1',
                        style: blackTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: blackTextFont,
                      ),
                      Text(
                        'quality1',
                        style: blackTextFont,
                        maxLines: 2,
                      ).tr()
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '2',
                        style: blackTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: blackTextFont,
                      ),
                      Text(
                        'quality2',
                        style: blackTextFont,
                        maxLines: 2,
                      ).tr()
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '3',
                        style: blackTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: blackTextFont,
                      ),
                      Text(
                        'quality3',
                        style: blackTextFont,
                        maxLines: 2,
                      ).tr()
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '4',
                        style: blackTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: blackTextFont,
                      ),
                      Text(
                        'quality4',
                        style: blackTextFont,
                        maxLines: 2,
                      ).tr()
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '5',
                        style: blackTextFont.copyWith(height: 1.6),
                      ),
                      Text(
                        ':',
                        style: blackTextFont,
                      ),
                      Text(
                        'quality5',
                        style: blackTextFont,
                        maxLines: 2,
                      ).tr()
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

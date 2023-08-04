part of '../pages.dart';

class HadithPage extends StatelessWidget {
  const HadithPage({
    required this.hadithNarrator,
    super.key,
  });

  final HadithNarrator hadithNarrator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: makes appbar reusable later (makes its own widget)
      appBar: AppBar(
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
              const SizedBox(width: 16),
              Icon(MdiIcons.arrowLeft, size: 20.0),
              const SizedBox(width: 8.0),
              Text(
                'Back',
                style: whiteTextFont.copyWith(fontSize: 16.0),
              ),
            ],
          ),
        ),

        //TODO: change later
        title: Text(
          hadithNarrator.name.getOrCrash(),
        ),
      ),
      body: Container(
        child: Text(
          'asd',
        ),
      ),
    );
  }
}

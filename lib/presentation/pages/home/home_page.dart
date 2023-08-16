part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.userID,
    required this.pageIndex,
    super.key,
  });

  final UniqueString userID;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PageViewBloc>(
          create: (context) => getIt<PageViewBloc>()
            ..add(
              PageViewEvent.pageViewChanged(
                pageViewIndex: pageIndex,
              ),
            ),
        ),
        BlocProvider<HadithNarratorBloc>(
          create: (context) => getIt<HadithNarratorBloc>()
            ..add(
              const HadithNarratorEvent.getHadithNarrators(),
            ),
        ),
      ],
      child: HomePageScaffold(
        userID: userID,
        pageIndex: pageIndex,
      ),
    );
  }
}

class HomePageScaffold extends StatelessWidget {
  const HomePageScaffold({
    required this.userID,
    required this.pageIndex,
    super.key,
  });

  final UniqueString userID;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      initialPage: pageIndex,
    );

    return BlocBuilder<PageViewBloc, PageViewState>(
      builder: (context, pageViewState) {
        return Scaffold(
          backgroundColor: defaultBackgroundColor,
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context) / 14,
              vertical: screenHeight(context) / 50,
            ),
            color: primaryColor,
            child: GNav(
              selectedIndex: pageViewState.pageViewIndex,
              color: whiteColor,
              backgroundColor: primaryColor,
              activeColor: primaryColor,
              tabBackgroundColor: whiteColor,
              duration: const Duration(
                milliseconds: 300,
              ),
              gap: screenWidth(context) / 60,
              textStyle: const TextStyle(
                color: primaryColor,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(context) / 20,
                vertical: screenHeight(context) / 62,
              ),
              onTabChange: (value) {
                pageController.jumpToPage(
                  value,
                );
              },
              tabs: [
                GButton(
                  text: 'Add Card',
                  icon: MdiIcons.plusBoxOutline,
                  rippleColor: secondaryColor,
                  haptic: true,
                ),
                GButton(
                  text: 'Review',
                  icon: MdiIcons.cardsOutline,
                  rippleColor: secondaryColor,
                  haptic: true,
                ),
                GButton(
                  text: 'Profile',
                  icon: MdiIcons.accountBoxOutline,
                  rippleColor: secondaryColor,
                  haptic: true,
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: statusBarHeight(context),
                    color: primaryColor,
                  ),
                  Container(
                    height: screenHeight(context) / 5.4,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          30.0,
                        ),
                        bottomRight: Radius.circular(
                          30.0,
                        ),
                      ),
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              SafeArea(
                child: BlocBuilder<UserBloc, UserState>(
                  builder: (context, userState) => userState.user == null
                      ? const CustomCircularProgressIndicatorWidget()
                      : PageView(
                          controller: pageController,
                          onPageChanged: (value) {
                            context.read<PageViewBloc>().add(
                                  PageViewEvent.pageViewChanged(
                                    pageViewIndex: value,
                                  ),
                                );
                          },
                          children: [
                            NarratorPage(
                              userID: userID,
                            ),
                            const ReviewPage(),
                            //add profile page later
                            const Center(
                              child: Text('Profile Page'),
                            ),
                          ],
                        ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

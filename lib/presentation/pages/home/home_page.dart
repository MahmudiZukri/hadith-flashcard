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
        BlocProvider<UserBloc>(
          create: (context) => getIt<UserBloc>()
            ..add(
              UserEvent.loadUser(
                userID: userID,
              ),
            ),
        ),
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
        BlocProvider<HadithFlashcardBloc>(
          create: (context) => getIt<HadithFlashcardBloc>()
            ..add(
              HadithFlashcardEvent.getFlashcard(
                userID: userID,
              ),
            ),
        ),
        BlocProvider<AdBloc>(
          create: (context) => getIt<AdBloc>()
            ..add(
              const AdEvent.loadAd(
                adEnum: EAd.reviewPageAd,
              ),
            )
            ..add(
              const AdEvent.loadAd(
                adEnum: EAd.profilePageAd,
              ),
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
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, userState) {
            return Scaffold(
              bottomNavigationBar: CustomBottomNavigation(
                pageSelectedIndex: pageViewState.pageViewIndex,
                pageController: pageController,
                isEnableOntap: userState.user != null,
              ),
              body: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: statusBarHeight(),
                        color: primaryColor,
                      ),
                      Container(
                        height: screenHeight() / 3,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              70.0,
                            ),
                            bottomRight: Radius.circular(
                              70.0,
                            ),
                          ),
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SafeArea(
                    child: userState.user == null
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
                              // Narrator page
                              NarratorPage(
                                userID: userID,
                              ),
                              // Review page
                              ReviewPage(
                                userID: userID,
                                gotoNarratorPageOnPressed: () {
                                  pageController.jumpToPage(0);
                                  context.read<PageViewBloc>().add(
                                        const PageViewEvent.pageViewChanged(
                                          pageViewIndex: 0,
                                        ),
                                      );
                                },
                              ),
                              // Profile page
                              ProfilePage(
                                userID: userID,
                              ),
                            ],
                          ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}

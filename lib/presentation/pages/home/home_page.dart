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
          bottomNavigationBar: CustomBottomNavigation(
            pageSelectedIndex: pageViewState.pageViewIndex,
            pageController: pageController,
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
                    height: screenHeight(context) / 3,
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
                child: BlocBuilder<UserBloc, UserState>(
                  builder: (context, userState) => userState.user == null
                      ? const SizedBox()
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
                            ProfilePage(
                              userID: userID,
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

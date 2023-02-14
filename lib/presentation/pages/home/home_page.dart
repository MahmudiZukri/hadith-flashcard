part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PageViewBloc>(
      create: (context) => getIt<PageViewBloc>(),
      child: const HomePageScaffold(),
    );
  }
}

class HomePageScaffold extends StatelessWidget {
  const HomePageScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      initialPage: 1,
    );

    return BlocBuilder<PageViewBloc, PageViewState>(
      builder: (context, pageViewState) {
        return Scaffold(
          backgroundColor: backgroundColor,
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 34.0,
              vertical: 22.0,
            ),
            color: primaryColor,
            child: GNav(
              selectedIndex: pageViewState.pageViewIndex,
              color: whiteColor,
              backgroundColor: primaryColor,
              activeColor: primaryColor,
              tabBackgroundColor: whiteColor,
              duration: const Duration(milliseconds: 300),
              gap: 12.0,
              textStyle: const TextStyle(
                color: primaryColor,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 28.0,
                vertical: 13.0,
              ),
              onTabChange: (value) {
                pageController.jumpToPage(
                  value,
                );
              },
              tabs: const [
                GButton(
                  text: 'Add Card',
                  icon: MdiIcons.plusBoxOutline,
                  rippleColor: secondaryColor,
                  haptic: true,
                ),
                GButton(
                  text: 'Recall',
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
              Container(
                height: screenHeight(context) / 3,
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
              SafeArea(
                child: BlocBuilder<UserBloc, UserState>(
                  builder: (context, userState) => userState.user == null
                      ? const CustomCircularProgressIndicator()
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
                            const Center(
                              child: Text('Add Card Page'),
                            ),
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: screenHeight(context) / 2,
                                    width: screenWidth(context) -
                                        (screenWidth(context) / 6),
                                    padding:
                                        const EdgeInsets.all(defaultMargin),
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(
                                        24.0,
                                      ),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Content',
                                          ),
                                          Text(
                                            userState.user!.name.getOrCrash(),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              context.read<AuthBloc>().add(
                                                    const AuthEvent.signOut(),
                                                  );
                                            },
                                            child: const Text(
                                              'Sign Out',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

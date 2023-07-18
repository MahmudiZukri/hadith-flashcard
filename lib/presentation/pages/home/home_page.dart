part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PageViewBloc>(
          create: (context) => getIt<PageViewBloc>(),
        ),
        BlocProvider<HadithNarratorBloc>(
          create: (context) => getIt<HadithNarratorBloc>(),
        ),
      ],
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
              Column(
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
                ],
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
                            const AddFlashcardPage(),
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Row(
                                  //   children: [
                                  //     const Text('55 Hadiths'),
                                  //     const SizedBox(width: 10.0),
                                  //     Container(
                                  //       height: 10.0,
                                  //       width: screenWidth(context) / 3,
                                  //       decoration: BoxDecoration(
                                  //         color: secondaryColor,
                                  //         borderRadius: BorderRadius.circular(
                                  //           10.0,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: List.generate(
                                      3,
                                      (index) => Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            margin: EdgeInsets.only(
                                                right: index == 2 ? 0 : 50),
                                            decoration: const BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          const Text('Reviewing')
                                        ],
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        height: screenHeight(context) / 2,
                                        width: screenWidth(context) -
                                            (screenWidth(context) / 6),
                                        // padding:
                                        //     const EdgeInsets.all(defaultMargin),
                                        decoration: BoxDecoration(
                                          color: whiteColor,
                                          borderRadius: defaultBorderRadius(),
                                        ),
                                        child: Center(
                                          child: Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            children: [
                                              // Container(
                                              //   height:
                                              //       screenHeight(context) / 4,
                                              //   decoration: BoxDecoration(
                                              //     color: greyColor,
                                              //     borderRadius:
                                              //         defaultBorderRadius(),
                                              //   ),
                                              // ),
                                              const Text(
                                                'Content',
                                              ),

                                              Text(
                                                userState.user!.name
                                                    .getOrCrash(),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  context.read<AuthBloc>().add(
                                                        const AuthEvent
                                                            .signOut(),
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

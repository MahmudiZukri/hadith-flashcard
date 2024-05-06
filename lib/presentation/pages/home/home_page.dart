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
                    isEnableOntap:
                        // disable when user is null or user is disactive
                        userState.user != null && userState.user!.isActive),
                body: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: statusBarHeight(),
                          color: primaryColor,
                        ),
                        Container(
                          height:
                              userState.user != null && userState.user!.isActive
                                  ? screenHeight() / 3
                                  : screenHeight() / 6,
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
                          : userState.user != null && userState.user!.isActive
                              ?

                              // If user is active
                              PageView(
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
                                              const PageViewEvent
                                                  .pageViewChanged(
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
                                )
                              :

                              // If user is disactive

                              Container(
                                  width: screenWidth(),
                                  margin: EdgeInsets.only(
                                    top: screenHeight() / 16,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'reactiveAccount'.tr,
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 30.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: CustomElevatedButtonWidget(
                                              text: 'no'.tr,
                                              backgroundColor: redColor,
                                              textStyle:
                                                  adaptiveTextFont.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: colorScheme()
                                                    .inversePrimary,
                                              ),
                                              onPressed: () {
                                                // No button action
                                                context.read<AuthBloc>().add(
                                                      const AuthEvent.signOut(),
                                                    );

                                                Get.offAll(
                                                  () => const SignInPage(),
                                                );
                                              },
                                            ),
                                          ),
                                          const SizedBox(width: 24.0),
                                          Expanded(
                                            child: CustomElevatedButtonWidget(
                                              text: 'yes'.tr,
                                              backgroundColor: primaryColor,
                                              textStyle:
                                                  adaptiveTextFont.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: colorScheme()
                                                    .inversePrimary,
                                              ),
                                              onPressed: () {
                                                // Yes button action

                                                if (userState.user != null) {
                                                  context.read<AuthBloc>().add(
                                                        AuthEvent
                                                            .activeOrDeactivateAccount(
                                                          user: userState.user!,
                                                          isActivated: true,
                                                        ),
                                                      );

                                                  context.read<UserBloc>().add(
                                                        UserEvent.loadUser(
                                                          userID: userID,
                                                        ),
                                                      );
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                    )
                  ],
                ));
          },
        );
      },
    );
  }
}

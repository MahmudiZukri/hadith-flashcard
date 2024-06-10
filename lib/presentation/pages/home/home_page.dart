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
        BlocProvider<ShowcaseBloc>(
          create: (context) => getIt<ShowcaseBloc>(),
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

    return BlocBuilder<RemoteConfigBloc, RemoteConfigState>(
      builder: (context, remoteConfigState) {
        return BlocBuilder<PageViewBloc, PageViewState>(
          builder: (context, pageViewState) {
            return BlocBuilder<UserBloc, UserState>(
              builder: (context, userState) {
                return Scaffold(
                  body: ShowCaseWidget(
                    onComplete: (index, selectedGlobalKey) {},
                    builder: (context) => FocusDetector(
                      onFocusGained: () {
                        context.read<HadithFlashcardBloc>().add(
                              HadithFlashcardEvent.getFlashcard(
                                userID: userID,
                              ),
                            );

                        // TODO : make condition later wheter its first time or not with shared preference

                        context.read<ShowcaseBloc>().add(
                              ShowcaseEvent.start(
                                context: context,
                              ),
                            );
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: statusBarHeight(),
                                color: primaryColor,
                              ),
                              Container(
                                height: userState.user != null &&
                                        userState.user!.isActive
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
                                : userState.user != null &&
                                        userState.user!.isActive
                                    ?
                                    // If user is active
                                    Stack(
                                        children: [
                                          PageView(
                                            controller: pageController,
                                            onPageChanged: (value) {
                                              context.read<PageViewBloc>().add(
                                                    PageViewEvent
                                                        .pageViewChanged(
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
                                                  context
                                                      .read<PageViewBloc>()
                                                      .add(
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
                                          ),

                                          // Update version dialog
                                          if (remoteConfigState
                                                  .packageInfo?.version !=
                                              null)
                                            remoteConfigState
                                                .optionFailureOrAppVersionInformation
                                                .match(
                                              () => const SizedBox(),
                                              (either) => either.fold(
                                                (l) => const SizedBox(),
                                                (r) {
                                                  if (CommonUtils
                                                      .isVersionGreaterThan(
                                                    remoteConfigState
                                                        .packageInfo!.version,
                                                    r.canUpdateVersion
                                                        .getOrCrash(),
                                                  )) {
                                                    return UpdateApplicationVersionDialog(
                                                      yesOnTap: () {
                                                        context
                                                            .read<
                                                                RemoteConfigBloc>()
                                                            .add(
                                                              const RemoteConfigEvent
                                                                  .closeDialog(),
                                                            );
                                                        final playstoreUrl = r
                                                            .playstoreUrl
                                                            .getOrCrash();
                                                        final appstoreUrl = r
                                                            .appstoreUrl
                                                            .getOrCrash();

                                                        if (Platform
                                                            .isAndroid) {
                                                          launchUrl(
                                                            Uri.parse(
                                                                playstoreUrl),
                                                          );
                                                        } else if (Platform
                                                            .isIOS) {
                                                          launchUrl(
                                                            Uri.parse(
                                                                appstoreUrl),
                                                          );
                                                        }
                                                      },
                                                      noOnTap: () {
                                                        context
                                                            .read<
                                                                RemoteConfigBloc>()
                                                            .add(
                                                              const RemoteConfigEvent
                                                                  .closeDialog(),
                                                            );
                                                      },
                                                    );
                                                  }

                                                  return const SizedBox();
                                                },
                                              ),
                                            ),
                                        ],
                                      )
                                    :

                                    // If user is inactive
                                    InactiveAccountDialog(userID: userID),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: screenHeight() / 10,
                              child: CustomBottomNavigation(
                                showcaseState:
                                    context.watch<ShowcaseBloc>().state,
                                pageSelectedIndex: pageViewState.pageViewIndex,
                                pageController: pageController,
                                isEnableOntap:
                                    // disable when user is null or user is disactive
                                    userState.user != null &&
                                        userState.user!.isActive,
                              ),

                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class InactiveAccountDialog extends StatelessWidget {
  const InactiveAccountDialog({
    super.key,
    required this.userID,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
      onFocusGained: () {
        // Dialog
        CommonUtils.openCustomDialog(
          context: context,
          title: Text(
            'reactiveAccount'.tr,
            style: adaptiveTextFont().copyWith(
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
              color: colorScheme().primary,
            ),
            textAlign: TextAlign.center,
          ),
          content: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomElevatedButtonWidget(
                    text: 'no'.tr,
                    backgroundColor: redColor,
                    textStyle: adaptiveTextFont().copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme().inversePrimary,
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
                    textStyle: adaptiveTextFont().copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme().inversePrimary,
                    ),
                    onPressed: () {
                      var userState = context.read<UserBloc>().state;

                      // Yes button action

                      if (userState.user != null) {
                        Navigator.pop(context);

                        context.read<AuthBloc>().add(
                              AuthEvent.activeOrDeactivateAccount(
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
          ),
        );
      },
      child: Container(
        color: Colors.transparent,
      ),
    );
  }
}

class UpdateApplicationVersionDialog extends StatelessWidget {
  const UpdateApplicationVersionDialog({
    super.key,
    required this.yesOnTap,
    required this.noOnTap,
  });

  final Function() yesOnTap;
  final Function() noOnTap;

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
      onFocusGained: () {
        // Dialog
        CommonUtils.openCustomDialog(
          context: context,
          title: Text(
            'Mau mencoba serunya fitur baru? Yuk, perbarui aplikasi sekarang!',
            style: adaptiveTextFont().copyWith(
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
              color: colorScheme().primary,
            ),
            textAlign: TextAlign.center,
          ),
          content: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomElevatedButtonWidget(
                    text: 'maybeLater'.tr,
                    backgroundColor: redColor,
                    textStyle: adaptiveTextFont().copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme().inversePrimary,
                    ),
                    onPressed: () {
                      // No button action

                      noOnTap();
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(width: 24.0),
                Expanded(
                  child: CustomElevatedButtonWidget(
                    text: 'tryNow'.tr,
                    backgroundColor: primaryColor,
                    textStyle: adaptiveTextFont().copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme().inversePrimary,
                    ),
                    onPressed: () {
                      // Yes button action

                      yesOnTap();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
        color: Colors.transparent,
      ),
    );
  }
}

part of '../../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.userID,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return ProfilePageScaffold(
      userID: userID,
    );
  }
}

class ProfilePageScaffold extends StatelessWidget {
  const ProfilePageScaffold({
    required this.userID,
    super.key,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RemoteConfigBloc, RemoteConfigState>(
      builder: (context, remoteConfigState) {
        return BlocBuilder<AdBloc, AdState>(
          builder: (context, adState) {
            return BlocBuilder<UserBloc, UserState>(
              builder: (context, userState) {
                return BlocListener<AuthBloc, AuthState>(
                  listenWhen: (previous, current) =>
                      previous.showSnackbar != current.showSnackbar,
                  listener: (context, state) {
                    state.optionFailureOrSuccess.match(
                      () => null,
                      (either) => either.fold(
                        (f) {
                          CommonUtils.customSnackbar(
                            isSuccess: false,
                            message: f.maybeMap(
                              handledByFirebase: (s) => s.message,
                              orElse: () =>
                                  '${'somethingWentWrong'.tr} (${f.message}).',
                            ),
                          );
                        },
                        (_) {},
                      ),
                    );

                    // note : we use this state for deactivating user account rn

                    state.optionDeleteFailureOrSuccess.match(
                      () => null,
                      (either) => either.fold(
                        (f) {
                          CommonUtils.customSnackbar(
                            isSuccess: false,
                            message: f.maybeMap(
                              handledByFirebase: (s) => s.message,
                              orElse: () =>
                                  '${'somethingWentWrong'.tr} (${f.message}).',
                            ),
                          );
                        },
                        (_) {
                          CommonUtils.customSnackbar(
                            isSuccess: true,
                            // note : rn deactivating acc message is just the same like deleting acc snackbar
                            message: 'accountSuccessfullyDeleted'.tr,
                          );
                        },
                      ),
                    );

                    // note : we need to comment this rn, cause we need to try soft delete / deactivate first ( this is the hard delete one )

                    // state.optionDeleteFailureOrSuccess.match(
                    //   () => null,
                    //   (either) => either.fold(
                    //     (f) {
                    //       CommonUtils.customSnackbar(
                    //         isSuccess: false,
                    //         message: f.maybeMap(
                    //           handledByFirebase: (s) => s.message,
                    //           orElse: () =>
                    //               '${'somethingWentWrong'.tr} (${f.message}).',
                    //         ),
                    //       );
                    //     },
                    //     (_) {
                    //       CommonUtils.customSnackbar(
                    //         isSuccess: true,
                    //         message: 'accountSuccessfullyDeleted'.tr,
                    //       );

                    //       // TODO : goto sign in page
                    //     },
                    //   ),
                    // );
                  },
                  child: Container(
                    height: screenHeight(),
                    width: screenWidth(),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        // Title
                        Column(
                          children: [
                            const SizedBox(height: 14.0),
                            Text(
                              'profile'.tr,
                              style: adaptiveTextFont().copyWith(
                                fontSize: 20.0,
                                letterSpacing: 3,
                                color: colorScheme(context: context)
                                    .inversePrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24.0),
                          ],
                        ),
                        // Main container
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                              defaultMargin,
                              defaultMargin,
                              defaultMargin,
                              Platform.isAndroid
                                  ? 8 + (screenHeight() / 10)
                                  : defaultMargin,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme(context: context).surface,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(
                                  45,
                                ),
                                topLeft: Radius.circular(
                                  45,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // User information
                                UserInfomation(
                                  userState: userState,
                                ),
                                const SizedBox(height: 24.0),
                                // Divider
                                const CustomDivider(),
                                const SizedBox(height: 24.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // My flashcard
                                    MyFlashcardSection(
                                      userID: userID,
                                      title: 'myFlashcard',
                                    ),

                                    // Choose language
                                    const ChooseLanguageSection(
                                      title: 'language',
                                    ),

                                    // Dark mode section
                                    BlocSelector<SettingBloc, SettingState,
                                        bool>(
                                      selector: (state) => state.isDarkMode,
                                      builder: (context, isDarkMode) => Column(
                                        children: [
                                          DarkModeSection(
                                            title: 'darkMode',
                                            value: isDarkMode,
                                            onChanged: () {
                                              context.read<SettingBloc>().add(
                                                    const SettingEvent
                                                        .changeToDarkMode(),
                                                  );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Uncomment later
                                    // Rate us
                                    // RateUsSection(
                                    //   title: 'rateUs',
                                    //   onTap: () {
                                    //     //rate
                                    //   },
                                    // ),

                                    // Help
                                    HelpSection(
                                      userID: userID,
                                      title: 'help',
                                    ),

                                    // Privacy policy
                                    PrivacyPolicySection(
                                      userID: userID,
                                      title: 'privacyPolicy',
                                    ),

                                    // Uncomment later
                                    // About app
                                    // AboutAppSection(
                                    //   userID: userID,
                                    //   title: 'aboutApp',
                                    // ),

                                    // Uncomment later
                                    // Share app
                                    // AboutAppSection(
                                    //   userID: userID,
                                    //   title: 'shareApp',
                                    // ),

                                    // consider makes rating feature, analitycs
                                    // think about the content here, maybe like how many hadith
                                    // that already mastered or something else
                                  ],
                                ),
                                const Spacer(),

                                // Profile page banner ads
                                if (remoteConfigState.isEnableAds &&
                                    adState.profilePageBannerAd != null)
                                  CustomAdWidget(
                                    bannerAd: adState.profilePageBannerAd!,
                                  ),

                                const Spacer(),
                                // Delete account
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      // Delete account dialog
                                      CommonUtils.openCustomDialog(
                                        context: Get.context!,
                                        title: Text(
                                          'areYouSureWannaDeleteAccount'.tr,
                                          style: adaptiveTextFont().copyWith(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500,
                                            color: colorScheme().primary,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        content: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 24.0,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child:
                                                      CustomElevatedButtonWidget(
                                                    text: 'no'.tr,
                                                    backgroundColor: redColor,
                                                    textStyle:
                                                        adaptiveTextFont()
                                                            .copyWith(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: colorScheme()
                                                          .inversePrimary,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                                const SizedBox(width: 24.0),
                                                Expanded(
                                                  child:
                                                      CustomElevatedButtonWidget(
                                                    text: 'yes'.tr,
                                                    backgroundColor:
                                                        primaryColor,
                                                    textStyle:
                                                        adaptiveTextFont()
                                                            .copyWith(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: colorScheme()
                                                          .inversePrimary,
                                                    ),
                                                    onPressed: () {
                                                      // note : we need to comment this rn, cause we need to try soft delete first ( this is the hard delete one )

                                                      // context.read<AuthBloc>().add(
                                                      //       const AuthEvent
                                                      //           .deleteAccount(),
                                                      //     );

                                                      // TODO: Delete document account and flashcard on Firestore if user is guest
                                                      // maybe we should apply this later

                                                      if (userState.user !=
                                                          null) {
                                                        context.read<AuthBloc>()
                                                          ..add(
                                                            AuthEvent
                                                                .activeOrDeactivateAccount(
                                                              user: userState
                                                                  .user!,
                                                              isActivated:
                                                                  false,
                                                            ),
                                                          )
                                                          ..add(
                                                            const AuthEvent
                                                                .signOut(),
                                                          );

                                                        Navigator.pop(context);
                                                      }
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'deleteAccount'.tr,
                                      style: redTextFont.copyWith(
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                        decorationColor: redColor,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                // Sign out
                                SignOut(
                                  email: userState.user?.email.getOrNull(),
                                ),
                                const SizedBox(height: 20.0),
                                // Space for bottom nav bar
                                const Spacer()
                              ],
                            ),
                          ),
                        ),
                      ],
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

class RateUsSection extends StatelessWidget {
  const RateUsSection({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: title,
      dense: true,
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
    );
  }
}

class DarkModeSection extends StatelessWidget {
  const DarkModeSection({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final Function() onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: title,
      dense: true,
      contentPadding: EdgeInsets.zero,
      trailing: Switch.adaptive(
        activeColor: primaryColor,
        inactiveThumbColor: greyColor,
        inactiveTrackColor:
            Platform.isIOS ? greyColor.withOpacity(0.5) : whiteColor,
        trackOutlineColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            return Colors.grey; // Use the default color.
          },
        ),
        value: value,
        onChanged: (_) {
          onChanged();
        },
      ),
      onTap: onChanged,
    );
  }
}

class HelpSection extends StatelessWidget {
  const HelpSection({
    super.key,
    required this.userID,
    required this.title,
  });

  final UniqueString userID;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: title,
      dense: true,
      contentPadding: EdgeInsets.zero,
      onTap: () {
        Get.to(
          () => HelpPage(
            userID: userID,
          ),
        );
      },
    );
  }
}

class MyFlashcardSection extends StatelessWidget {
  const MyFlashcardSection({
    super.key,
    required this.userID,
    required this.title,
  });

  final UniqueString userID;
  final String title;

  @override
  Widget build(BuildContext context) {
    final hadithFlashcardState = context.watch<HadithFlashcardBloc>().state;

    return CustomListTile(
      title: title,
      dense: true,
      contentPadding: EdgeInsets.zero,
      trailing: hadithFlashcardState.getFlashcards.isEmpty
          ? null
          : CustomNumberContainerWidget(
              number: hadithFlashcardState.getFlashcards.length,
            ),
      onTap: () {
        Get.to(
          () => MyFlashcardNarratorPage(
            userID: userID,
          ),
        );
      },
    );
  }
}

class AboutAppSection extends StatelessWidget {
  const AboutAppSection({
    super.key,
    required this.userID,
    required this.title,
  });

  final UniqueString userID;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: title,
      dense: true,
      contentPadding: EdgeInsets.zero,
      onTap: () {},
    );
  }
}

class PrivacyPolicySection extends StatelessWidget {
  const PrivacyPolicySection({
    super.key,
    required this.userID,
    required this.title,
  });

  final UniqueString userID;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: title,
      dense: true,
      contentPadding: EdgeInsets.zero,
      onTap: () {
        Get.to(
          () => PrivacyPolicyPage(
            userID: userID,
          ),
        );
      },
    );
  }
}

class ChooseLanguageSection extends StatelessWidget {
  const ChooseLanguageSection({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: title,
      contentPadding: EdgeInsets.zero,
      onTap: () {
        CustomModalBottomSheet(context).show(
          horizontalPadding: 4,
          widget: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'chooseLanguage'.tr,
                  style: adaptiveTextFont().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16.0),
                ...List.generate(
                  ELanguage.values.length,
                  (index) {
                    const languages = ELanguage.values;
                    return Column(
                      children: [
                        CustomDivider(
                          color: greyColor.withOpacity(0.3),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.read<SettingBloc>().add(
                                  SettingEvent.updateLocale(
                                    localeStr: languages[index].locale,
                                  ),
                                );

                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: greyColor,
                                    width: 2.0,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  languages[index].imageUrl,
                                  height: 30.0,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                languages[index].name,
                                style: adaptiveTextFont().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const Spacer(),
                              languages[index].locale == Get.locale.toString()
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 28.0),
              ],
            ),
          ),
        );
      },
      trailing: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: greyColor,
            width: 2.0,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          ELanguage.values
              .firstWhere(
                (element) => element.locale == Get.locale.toString(),
              )
              .imageUrl,
          height: 30.0,
        ),
      ),
    );
  }
}

class SignOut extends StatelessWidget {
  const SignOut({
    super.key,
    required this.email,
  });

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: redColor.withOpacity(0.2),
          border: Border.all(
            width: 2,
            color: redColor,
          ),
          borderRadius: largeBorderRadius(),
        ),
        child: TextButton(
          onPressed: () {
            if (FirebaseAuth.instance.currentUser != null) {
              if (email != null) {
                context.read<AuthBloc>().add(
                      const AuthEvent.signOut(),
                    );

                // User sign in as guest
              } else if (email == null) {
                // Hard delete account dialog
                CommonUtils.openCustomDialog(
                  context: Get.context!,
                  title: Text(
                    'areYouSureWannaDeleteGuestAccount'.tr,
                    style: adaptiveTextFont().copyWith(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      color: colorScheme().primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
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
                                Navigator.pop(context);
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
                                // Delete guest account completely when he signed out

                                // Delete auth account
                                context.read<AuthBloc>()
                                  ..add(
                                    const AuthEvent.deleteAccount(),
                                  )
                                  ..add(
                                    const AuthEvent.signOut(),
                                  );

                                // TODO: Delete document account and flashcard on Firestore if user is guest
                                // maybe we should apply this later

                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            }
          },
          child: Text(
            'signOut'.tr,
            style: redTextFont.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class UserInfomation extends StatelessWidget {
  const UserInfomation({
    required this.userState,
    super.key,
  });

  final UserState userState;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  minRadius: 32,
                  maxRadius: 32,
                  backgroundColor: greyColor.withOpacity(0.6),
                  child:
                      userState.user != null && userState.user?.photoUrl != null
                          ? ClipOval(
                              child: Image.network(
                                userState.user!.photoUrl!.getOrCrash(),
                                fit: BoxFit.cover,
                              ),
                            )
                          : SvgPicture.asset(
                              AssetUrl.profileIcon,
                              height: 28,
                              colorFilter: ColorFilter.mode(
                                colorScheme(context: context).surface,
                                BlendMode.srcIn,
                              ),
                            ),
                ),
                const SizedBox(width: 18.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          userState.user?.name.getOrCrash() ??
                              'youAreInGuestMode'.tr,
                          maxLines: 3,
                          style: adaptiveTextFont().copyWith(
                            fontSize: userState.user?.name.getOrNull() == null
                                ? 16
                                : 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      userState.user?.email.getOrNull() == null
                          ? Expanded(
                              child: GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  final flashcards = context
                                      .read<HadithFlashcardBloc>()
                                      .state
                                      .getFlashcards;

                                  if (flashcards.isEmpty) {
                                    CommonUtils.customSnackbar(
                                      isSuccess: false,
                                      message: 'youCantLink'.tr,
                                    );
                                  } else {
                                    Get.to(
                                      () => SignUpPage(
                                        flashcards: context
                                            .read<HadithFlashcardBloc>()
                                            .state
                                            .getFlashcards,
                                      ),
                                    );
                                  }
                                },
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'linkYourAccount'.tr,
                                    style: const TextStyle(
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Text(
                              userState.user!.email.getOrCrash(),
                              style: adaptiveTextFont(applyOpacity: true),
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(width: 14.0),
          // Edit button
          // GestureDetector(
          //   onTap: () {
          //     // TODO: create edit profile page later
          //   },
          //   child: const Icon(
          //     Icons.edit,
          //     color: primaryColor,
          //   ),
          // )
        ],
      ),
    );
  }
}

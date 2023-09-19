part of '../../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            children: [
              // Title
              Column(
                children: [
                  const SizedBox(height: 14.0),
                  Text(
                    'profile',
                    style: whiteTextFont.copyWith(
                      fontSize: 20.0,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ).tr(),
                  const SizedBox(height: 24.0),
                ],
              ),
              // Main container
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(
                    defaultMargin,
                  ),
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Choose language
                          ChooseLanguage(),
                          SizedBox(height: 6.0),
                          // About app
                          AboutApp(),
                          // think about the content here, maybe like how many hadith
                          // that already mastered or something else
                        ],
                      ),
                      const Spacer(),
                      // Sign out
                      const SignOut(),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SignOut extends StatelessWidget {
  const SignOut({
    super.key,
  });

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
            context.read<AuthBloc>().add(
                  const AuthEvent.signOut(),
                );
          },
          child: Text(
            'signOut',
            style: redTextFont.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ).tr(),
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
          Row(
            children: [
              CircleAvatar(
                minRadius: 32,
                backgroundColor: greyColor.withOpacity(0.6),
                child: SvgPicture.asset(
                  AssetUrl.profileIcon,
                  height: 28,
                  color: whiteColor,
                ),
              ),
              const SizedBox(width: 18.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userState.user?.name.getOrNull() ?? 'youAreInGuestMode',
                    maxLines: 3,
                    style: blackTextFont.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    userState.user?.email.getOrNull() ?? '',
                    style: greyTextFont,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 14.0),
          // Edit button
          GestureDetector(
            onTap: () {
              if (userState.user != null) {
                context.read<PageBloc>().add(
                      GotoEditProfilePage(
                        userID: userState.user!.id,
                      ),
                    );
              }
            },
            child: const Icon(
              Icons.edit,
              color: primaryColor,
            ),
          )
        ],
      ),
    );
  }
}

class AboutApp extends StatelessWidget {
  const AboutApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: implement later
      },
      child: const Text(
        'aboutApp',
      ).tr(),
    );
  }
}

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
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
                  'chooseLanguage',
                  style: blackTextFont.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ).tr(),
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
                            context.setLocale(
                              languages[index].locale.toLocale(),
                            );

                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                languages[index].imageUrl,
                                height: 30.0,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                languages[index].name,
                                style: blackTextFont.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const Spacer(),
                              languages[index].locale ==
                                      context.locale.toString()
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('language').tr(),
          Image.asset(
            ELanguage.values
                .firstWhere(
                  (element) => element.locale == context.locale.toString(),
                )
                .imageUrl,
            height: 30.0,
          ),
        ],
      ),
    );
  }
}

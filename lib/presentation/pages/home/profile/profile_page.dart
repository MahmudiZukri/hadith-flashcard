part of '../../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    required this.userID,
    super.key,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  padding: const EdgeInsets.fromLTRB(
                    defaultMargin,
                    defaultMargin,
                    defaultMargin,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // My flashcards
                          CustomListTile(
                            title: 'My flashcard',
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            onTap: () {
                              context.read<PageBloc>().add(
                                    GotoMyFlashcardPage(
                                      userID: userID,
                                    ),
                                  );
                            },
                          ),
                          // Choose language
                          const ChooseLanguageListTile(),

                          // About app
                          const AboutAppListTile(),

                          CustomListTile(
                            title: 'Help / Bantuan',
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            onTap: () {},
                          ),

                          CustomListTile(
                            title: 'Another',
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            onTap: () {},
                          ),

                          // consider makes rating feature, analitycs
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

class AboutAppListTile extends StatelessWidget {
  const AboutAppListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: 'aboutApp',
      dense: true,
      contentPadding: EdgeInsets.zero,
      onTap: () {},
    );
  }
}

class ChooseLanguageListTile extends StatelessWidget {
  const ChooseLanguageListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      title: 'language',
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
      trailing: Container(
        // padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          border: Border.all(color: greyColor),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          ELanguage.values
              .firstWhere(
                (element) => element.locale == context.locale.toString(),
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
            context.tr('signOut'),
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
          Row(
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
                            color: whiteColor,
                          ),
              ),
              const SizedBox(width: 18.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userState.user?.name.getOrNull() ??
                        context.tr('youAreInGuestMode'),
                    maxLines: 3,
                    style: blackTextFont.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
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

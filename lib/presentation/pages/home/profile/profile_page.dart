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
              Column(
                children: [
                  const SizedBox(height: 14.0),
                  Text(
                    'Profile',
                    style: whiteTextFont.copyWith(
                      fontSize: 20.0,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
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
                      IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //TODO: change this to beautiful icon later
                            const CircleAvatar(
                              minRadius: 32.0,
                              backgroundColor: blackColor,
                            ),
                            const SizedBox(width: 20.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userState.user?.name.getOrNull() ??
                                      'You are in guest mode',
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
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                // TODO: create edit profile page later
                              },
                              child: const Icon(
                                Icons.edit,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      const CustomDivider(),
                      const SizedBox(height: 24.0),

                      // TODO: think about the content later here
                      BlocBuilder<SettingBloc, SettingState>(
                        builder: (context, settingState) => Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (_) => Container(
                                                height: 182.0,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal:
                                                            defaultMargin),
                                                decoration: const BoxDecoration(
                                                    color: accentColor,
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0))),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                        height: 12.0),
                                                    Center(
                                                        child: Container(
                                                            height: 2.0,
                                                            width: 38.0,
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    primaryColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)))),
                                                    const SizedBox(
                                                        height: 18.0),
                                                    Text(
                                                      'chooseLang',
                                                      style: whiteTextFont
                                                          .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16,
                                                        color: whiteColor,
                                                      ),
                                                    ).tr(),
                                                    const SizedBox(height: 8.0),
                                                    Container(
                                                        height: 1.0,
                                                        width: double.infinity,
                                                        color: primaryColor),
                                                    GestureDetector(
                                                      onTap: () {
                                                        // context.setLocale('id'.toLocale());
                                                      },
                                                      child: Container(
                                                        color:
                                                            Colors.transparent,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            IconButton(
                                                              iconSize: 14.0,
                                                              onPressed: () {},
                                                              icon: Image.asset(
                                                                AssetUrl
                                                                    .indonesiaFlag,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 10.0,
                                                            ),
                                                            Text('Indonesia',
                                                                style: whiteTextFont.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14,
                                                                    color:
                                                                        whiteColor)),
                                                            const Spacer(),
                                                            'isID'.tr() ==
                                                                    'true'
                                                                ? const Icon(
                                                                    Icons.check,
                                                                    color: Colors
                                                                        .green)
                                                                : SizedBox()
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: 1.0,
                                                        width: double.infinity,
                                                        color: primaryColor),
                                                    GestureDetector(
                                                      onTap: () {
                                                        // context.setLocale('en_US'.toLocale());
                                                      },
                                                      child: Container(
                                                        color:
                                                            Colors.transparent,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            IconButton(
                                                              iconSize: 14.0,
                                                              onPressed: () {},
                                                              icon: Image.asset(
                                                                AssetUrl
                                                                    .unitedStatesFlag,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 10.0,
                                                            ),
                                                            Text('English',
                                                                style: whiteTextFont.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14,
                                                                    color:
                                                                        whiteColor)),
                                                            const Spacer(),
                                                            'isID'.tr() ==
                                                                    'false'
                                                                ? const Icon(
                                                                    Icons.check,
                                                                    color: Colors
                                                                        .green)
                                                                : const SizedBox()
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                  ],
                                                ),
                                              ),
                                          backgroundColor: Colors.transparent);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text('Language'),
                                        settingState.selectedLang.imageUrl ==
                                                null
                                            ? const SizedBox()
                                            : Image.asset(
                                                settingState
                                                    .selectedLang.imageUrl!,
                                                height: 30.0,
                                              ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 4.0),
                                  GestureDetector(
                                    onTap: () {
                                      // TODO: implement later
                                    },
                                    child: const Text(
                                      'About app',
                                    ),
                                  ),
                                ],
                              ),
                              Center(
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
                                      'Sign Out',
                                      style: redTextFont.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10.0),

                      // mungkin nanti kita tambahkan seberapa banyak yang udah dihafalkan dia dsini
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

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
                                      userState.user?.name.getOrNull() ??
                                          'youAreInGuestMode',
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
                            GestureDetector(
                              onTap: () {
                                // TODO: create edit profile page later
                              },
                              child: const Icon(
                                Icons.edit,
                                color: primaryColor,
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
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: defaultMargin,
                                          ),
                                          decoration: const BoxDecoration(
                                            color: whiteColor,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(
                                                20.0,
                                              ),
                                              topLeft: Radius.circular(
                                                20.0,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Center(
                                                child: Container(
                                                  height: 2.0,
                                                  width: 38.0,
                                                  decoration: BoxDecoration(
                                                    color: whiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      20.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 18.0),
                                              Text(
                                                'chooseLanguage',
                                                style: blackTextFont.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ).tr(),
                                              const SizedBox(height: 8.0),
                                              ...List.generate(
                                                ELanguage.values.length,
                                                (index) {
                                                  const languages =
                                                      ELanguage.values;
                                                  return Column(
                                                    children: [
                                                      const CustomDivider(),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      GestureDetector(
                                                        behavior:
                                                            HitTestBehavior
                                                                .translucent,
                                                        onTap: () {
                                                          context.setLocale(
                                                            languages[index]
                                                                .locale
                                                                .toLocale(),
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Image.asset(
                                                              languages[index]
                                                                  .imageUrl,
                                                              height: 30.0,
                                                            ),
                                                            const SizedBox(
                                                              width: 10.0,
                                                            ),
                                                            Text(
                                                              languages[index]
                                                                  .name,
                                                              style:
                                                                  blackTextFont
                                                                      .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            const Spacer(),
                                                            languages[index]
                                                                        .locale ==
                                                                    context
                                                                        .locale
                                                                        .toString()
                                                                ? const Icon(
                                                                    Icons.check,
                                                                    color: Colors
                                                                        .green,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text('language').tr(),
                                        Image.asset(
                                          ELanguage.values
                                              .firstWhere(
                                                (element) =>
                                                    element.locale ==
                                                    context.locale.toString(),
                                              )
                                              .imageUrl,
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
                                      'aboutApp',
                                    ).tr(),
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
                                      'signOut',
                                      style: redTextFont.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ).tr(),
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

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
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // TODO: implement later
                                  },
                                  child: const Text(
                                    'Language',
                                  ),
                                ),
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

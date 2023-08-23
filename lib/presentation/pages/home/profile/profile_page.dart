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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                        Text(
                          userState.user?.email.getOrNull() ?? '',
                          style: blackTextFont,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 24.0),
                const CustomDivider(),
                // think about the content later here
                // temp
                const Spacer(),
                const Text('About app'),
                TextButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                          const AuthEvent.signOut(),
                        );
                  },
                  child: Text(
                    'Sign Out',
                    style: redTextFont,
                  ),
                ),
                const SizedBox(height: 10.0),

                // mungkin nanti kita tambahkan seberapa banyak yang udah dihafalkan dia dsini
              ],
            ),
          ),
        );
      },
    );
  }
}

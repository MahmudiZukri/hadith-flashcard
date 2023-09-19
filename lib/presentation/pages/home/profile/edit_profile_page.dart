part of '../../pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({
    required this.userID,
    super.key,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: statusBarHeight(context),
                color: primaryColor,
              ),
              Container(
                height: screenHeight(context) / 3,
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
          BlocBuilder<UserBloc, UserState>(
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
                        Container(
                          height: statusBarHeight(context),
                          color: primaryColor,
                        ),
                        const SizedBox(height: 14.0),
                        Text(
                          'editProfile',
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
                        width: double.infinity,
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

                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

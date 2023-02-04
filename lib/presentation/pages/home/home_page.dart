part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 34.0,
          vertical: 22.0,
        ),
        color: primaryColor,
        child: GNav(
          color: whiteColor,
          backgroundColor: primaryColor,
          activeColor: primaryColor,
          tabBackgroundColor: whiteColor,
          gap: 12.0,
          textStyle: const TextStyle(
            color: primaryColor,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 28.0,
            vertical: 13.0,
          ),
          onTabChange: (value) {
            debugPrint(
              value.toString(),
            );
          },
          tabs: const [
            GButton(
              text: 'Add Card',
              rippleColor: secondaryColor,
              haptic: true,
              icon: MdiIcons.plusBoxOutline,
            ),
            GButton(
              text: 'Recall',
              icon: MdiIcons.cardsOutline,
            ),
            GButton(
              text: 'Profile',
              icon: MdiIcons.accountBoxOutline,
            ),
          ],
        ),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (_, state) => state.user == null
            ? const CustomCircularProgressIndicator()
            : Stack(
                children: [
                  Container(
                    height: screenHeight(context) / 3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          30.0,
                        ),
                        bottomRight: Radius.circular(
                          30.0,
                        ),
                      ),
                      color: primaryColor,
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: screenHeight(context) / 2,
                            width: screenWidth(context) -
                                (screenWidth(context) / 6),
                            padding: const EdgeInsets.all(defaultMargin),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(
                                24.0,
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Content',
                                  ),
                                  Text(
                                    state.user!.name.getOrCrash(),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context.read<AuthBloc>().add(
                                            const AuthEvent.signOut(),
                                          );
                                    },
                                    child: const Text(
                                      'Sign Out',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

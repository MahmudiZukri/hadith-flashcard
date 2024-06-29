part of 'widgets.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    required this.pageSelectedIndex,
    required this.pageController,
    required this.isEnableOntap,
    required this.showcaseState,
    super.key,
  });

  final int pageSelectedIndex;
  final PageController pageController;
  final bool isEnableOntap;
  final ShowcaseState showcaseState;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth() / 14,
            vertical: screenHeight() / 50,
          ),
          child: GNav(
            selectedIndex: pageSelectedIndex,
            color: colorScheme().surface,
            backgroundColor: primaryColor,
            activeColor: primaryColor,
            tabBackgroundColor: colorScheme().surface,
            duration: const Duration(
              milliseconds: 300,
            ),
            gap: screenWidth() / 60,
            textStyle: const TextStyle(
              color: primaryColor,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth() / 20,
              vertical: screenHeight() / 62,
            ),
            onTabChange: isEnableOntap
                ? (value) {
                    pageController.jumpToPage(
                      value,
                    );
                  }
                : null,
            tabs: [
              GButton(
                text: 'addCard'.tr,
                icon: MdiIcons.plusBoxOutline,
                rippleColor: secondaryColor,
                haptic: true,
              ),
              GButton(
                text: 'review'.tr,
                icon: MdiIcons.cardsOutline,
                rippleColor: secondaryColor,
                haptic: true,
              ),
              GButton(
                text: 'profile'.tr,
                icon: MdiIcons.accountBoxOutline,
                rippleColor: secondaryColor,
                haptic: true,
              ),
            ],
          ),
        ),
        if (!isEnableOntap)
          Container(
            color: Colors.transparent,
          ),
        Padding(
          padding: EdgeInsets.only(bottom: screenHeight() / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Showcase(
                key: showcaseState.narratorNavBarGlobalKey,
                title: 'addCardTitle'.tr,
                description: 'addCardText'.tr,
                child: const SizedBox(),
              ),
              Showcase(
                key: showcaseState.reviewNavBarGlobalKey,
                title: 'reviewTitle'.tr,
                description: 'reviewText'.tr,
                child: const SizedBox(),
              ),
              Showcase(
                key: showcaseState.profileNavBarGlobalKey,
                title: 'profileTitle'.tr,
                description: 'profileText'.tr,
                child: const SizedBox(),
              ),
            ],
          ),
        )
      ],
    );
  }
}

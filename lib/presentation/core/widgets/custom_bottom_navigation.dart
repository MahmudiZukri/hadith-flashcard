part of 'widgets.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    required this.pageSelectedIndex,
    required this.pageController,
    super.key,
  });

  final int pageSelectedIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth(context) / 14,
        vertical: screenHeight(context) / 50,
      ),
      child: GNav(
        selectedIndex: pageSelectedIndex,
        color: whiteColor,
        backgroundColor: primaryColor,
        activeColor: primaryColor,
        tabBackgroundColor: whiteColor,
        duration: const Duration(
          milliseconds: 300,
        ),
        gap: screenWidth(context) / 60,
        textStyle: const TextStyle(
          color: primaryColor,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) / 20,
          vertical: screenHeight(context) / 62,
        ),
        onTabChange: (value) {
          pageController.jumpToPage(
            value,
          );
        },
        tabs: [
          GButton(
            text: 'Add Card',
            icon: MdiIcons.plusBoxOutline,
            rippleColor: secondaryColor,
            haptic: true,
          ),
          GButton(
            text: 'Review',
            icon: MdiIcons.cardsOutline,
            rippleColor: secondaryColor,
            haptic: true,
          ),
          GButton(
            text: 'Profile',
            icon: MdiIcons.accountBoxOutline,
            rippleColor: secondaryColor,
            haptic: true,
          ),
        ],
      ),
    );
  }
}

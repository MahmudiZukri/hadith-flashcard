part of 'widgets.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({
    required this.title,
    required this.leadingOnTap,
    this.desc,
    super.key,
  });

  final String title;
  final Function() leadingOnTap;
  final String? desc;

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: primaryColor,
      leadingWidth: screenWidth(context) / 4,
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: leadingOnTap,
        child: Row(
          children: [
            const SizedBox(width: 12.0),
            Icon(MdiIcons.arrowLeft, size: 16.0),
            const SizedBox(width: 8.0),
            Text(
              'Back',
              style: whiteTextFont.copyWith(fontSize: 14.0),
            ),
          ],
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: whiteTextFont.copyWith(
              fontSize: 18.0,
            ),
          ),
          desc == null
              ? const SizedBox()
              : Text(
                  desc!,
                  style: greyTextFont.copyWith(
                    fontSize: 10.0,
                  ),
                ),
        ],
      ),
    );
  }
}

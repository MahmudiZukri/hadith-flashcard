part of 'widgets.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({
    required this.title,
    required this.leadingOnTap,
    this.actions,
    this.contentColor,
    this.desc,
    super.key,
  });

  final String title;
  final Function() leadingOnTap;
  final List<Widget>? actions;
  final Color? contentColor;
  final String? desc;

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: primaryColor,
      leadingWidth: screenWidth() / 4,
      actions: actions,
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: leadingOnTap,
        child: Row(
          children: [
            const SizedBox(width: 12.0),
            Icon(
              MdiIcons.arrowLeft,
              size: 16.0,
              color: contentColor ?? colorScheme().inversePrimary,
            ),
            const SizedBox(width: 8.0),
            Text(
              'back'.tr,
              style: adaptiveTextFont().copyWith(
                fontSize: 14.0,
                color: contentColor ?? colorScheme().inversePrimary,
              ),
            )
          ],
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: adaptiveTextFont().copyWith(
              fontSize: 18.0,
              color: contentColor ?? colorScheme().inversePrimary,
            ),
          ),
          desc == null
              ? const SizedBox()
              : Text(
                  desc!,
                  style: adaptiveTextFont().copyWith(
                    fontSize: 10.0,
                    color: contentColor ?? colorScheme().inversePrimary,
                  ),
                ),
        ],
      ),
    );
  }
}

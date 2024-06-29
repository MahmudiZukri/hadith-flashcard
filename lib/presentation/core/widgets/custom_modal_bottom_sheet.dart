part of 'widgets.dart';

class CustomModalBottomSheet {
  CustomModalBottomSheet(
    this.context,
  );

  final BuildContext context;

  Future<dynamic> show<T>({
    required Widget widget,
    bool isDismissible = true,
    double horizontalPadding = 8,
  }) {
    return showModalBottomSheet(
      isDismissible: isDismissible,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: colorScheme().surface,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20.0),
                Container(
                  height: 5,
                  width: 44.0,
                  decoration: BoxDecoration(
                    color: blackColor.withOpacity(0.1),
                    borderRadius: mediumBorderRadius(),
                  ),
                ),
                const SizedBox(height: 20.0),
                widget,
              ],
            ),
          ),
        );
      },
    );
  }
}

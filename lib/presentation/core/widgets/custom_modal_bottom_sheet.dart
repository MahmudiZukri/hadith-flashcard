part of 'widgets.dart';

class CustomModalBottomSheet {
  CustomModalBottomSheet(this.context);

  final BuildContext context;

  Future<dynamic> show<T>({
    required Widget widget,
    double horizontalPadding = 8,
  }) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
            ),
            child: widget,
          ),
        );
      },
    );
  }
}

part of 'widgets.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    required this.title,
    required this.onTap,
    this.subtitle,
    this.dense,
    this.trailing,
    this.contentPadding,
    super.key,
  });

  final String title;
  final Function() onTap;
  final String? subtitle;
  final bool? dense;
  final Widget? trailing;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title).tr(),
      subtitle: subtitle == null ? null : Text(subtitle!),
      contentPadding: contentPadding,
      onTap: onTap,
      dense: dense,
      trailing: trailing,
    );
  }
}

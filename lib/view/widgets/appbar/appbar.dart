part of "../../../utils/import/app_import.dart";

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 70,
      leading: Padding(
        padding: EdgeInsets.only(top: 20.r, left: 20.r),
        child: const Text("Home"),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + kTextTabBarHeight);
}

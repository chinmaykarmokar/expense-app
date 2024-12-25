import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget titleWidget;
  final int backgroundColor;
  final Function iconWidget;
  final Widget actionWidget;

  const AppBarWidget({
    required this.titleWidget,
    required this.backgroundColor,
    required this.iconWidget,
    required this.actionWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: iconWidget(
          icon: Icons.arrow_back_ios,
          iconColor: 0xFF000000,
        ),
        onPressed: () {
          context.pop();
        },
      ),
      title: titleWidget,
      centerTitle: true,
      backgroundColor: Color(backgroundColor),
      actions: [actionWidget],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
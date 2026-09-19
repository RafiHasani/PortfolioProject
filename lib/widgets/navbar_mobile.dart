// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/home_screen_controller.dart';

class NavBarMobileWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Function(BuildContext context) menuCallback;
  final HomeController homeController;

  const NavBarMobileWidget({
    super.key,
    required this.menuCallback,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Material(
      elevation: 1,
      color: colorScheme.surface,
      shadowColor: colorScheme.shadow,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Mohammad Rafi.", style: textTheme.titleLarge),
            IconButton(
              splashColor: Colors.transparent,
              onPressed: () {
                menuCallback(context);
              },
              icon: Icon(Icons.menu, size: 16.h, color: colorScheme.onSurface),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}

import 'package:flutter/material.dart';
import 'package:rent_app/config/app_theme/app_color.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required this.isCollpased,
  });
  final bool isCollpased;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.mainColor,
      child: Align(
        alignment: Alignment.centerLeft,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const BuildDrawerItem(
                    icon: Icons.home_rounded,
                    title: "Home",
                  ),
                  const BuildDrawerItem(
                    icon: Icons.person_outline_sharp,
                    title: "Profile",
                  ),
                  const BuildDrawerItem(
                    icon: Icons.place_outlined,
                    title: "Nearby",
                  ),
                  Divider(color: AppColor.white),
                  const BuildDrawerItem(
                    icon: Icons.bookmark_outline,
                    title: "Bookmark",
                  ),
                  const BuildDrawerItem(
                    icon: Icons.notifications_none,
                    title: "Notifications",
                    isRed: true,
                  ),
                  const BuildDrawerItem(
                    icon: Icons.message_outlined,
                    title: "Message",
                    isRed: true,
                  ),
                  Divider(color: AppColor.white),
                  const BuildDrawerItem(
                    icon: Icons.settings,
                    title: "Settings",
                  ),
                  const BuildDrawerItem(
                    icon: Icons.help_outline,
                    title: "Help",
                  ),
                  const BuildDrawerItem(
                    icon: Icons.logout_outlined,
                    title: "Logout",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BuildDrawerItem extends StatelessWidget {
  const BuildDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.isRed = false,
  });
  final IconData icon;
  final String title;
  final bool isRed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        title,
        style: TextStyle(
          color: AppColor.white,
          fontSize: 14,
        ),
      ),
      leading: Stack(
        alignment: Alignment.topRight,
        children: [
          Icon(
            icon,
            color: AppColor.white,
            size: 20,
          ),
          isRed
              ? CircleAvatar(
                  backgroundColor: AppColor.red,
                  radius: 3,
                )
              : const SizedBox(),
        ],
      ),
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
    );
  }
}

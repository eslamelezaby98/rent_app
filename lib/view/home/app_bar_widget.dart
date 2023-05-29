import 'package:flutter/material.dart';

import '../../config/app_theme/app_color.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.onCollpase,
  });
  final Function() onCollpase;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onCollpase,
        icon: Icon(
          Icons.menu,
          color: AppColor.greyColor,
        ),
      ),
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Location",
            style: TextStyle(
              color: AppColor.greyColor,
              fontSize: 12,
              fontFamily: "Raleway",
            ),
          ),
          PopupMenuButton(
            child: SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      "Jakarta",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    color: AppColor.greyColor,
                  ),
                ],
              ),
            ),
            itemBuilder: (context) {
              return [];
            },
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Icon(
                Icons.notifications_none,
                color: AppColor.black,
                size: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  right: 5,
                ),
                child: CircleAvatar(
                  backgroundColor: AppColor.red,
                  radius: 3,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

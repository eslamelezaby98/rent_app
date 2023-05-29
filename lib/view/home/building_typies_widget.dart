import 'package:flutter/material.dart';
import 'package:rent_app/config/app_string/app_string.dart';
import 'package:rent_app/config/app_theme/app_color.dart';

class BuildingTypiesWidget extends StatelessWidget {
  const BuildingTypiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: AppString.topics.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.grey2,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  AppString.topics[index],
                  style: TextStyle(
                    color: AppColor.textColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

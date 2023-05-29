import 'package:flutter/material.dart';
import 'package:rent_app/config/app_theme/app_color.dart';
import 'package:rent_app/view/home/app_bar_widget.dart';
import 'package:rent_app/view/home/building_typies_widget.dart';
import 'package:rent_app/view/home/near_from_you_widget.dart';
import 'package:rent_app/view/home/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.onCollpase,
    required this.isCollapsed,
    required this.screenHeight,
    required this.screenWidth,
    required this.duration,
  }) : super(key: key);
  final Function() onCollpase;
  final bool isCollapsed;
  final double screenWidth;
  final double screenHeight;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: isCollapsed ? 0 : 0.2 * screenHeight,
      bottom: isCollapsed ? 0 : 0.2 * screenWidth,
      right: isCollapsed ? 0 : -0.4,
      left: isCollapsed ? 0 : 0.5 * screenWidth,
      duration: duration,
      child: Material(
        animationDuration: duration,
        borderRadius:  BorderRadius.only(
          topLeft: Radius.circular(!isCollapsed? 50 : 0),
          bottomLeft:Radius.circular(!isCollapsed? 50 : 0)
        ),
        elevation: 10,
        color: AppColor.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                //* app var
                AppBarWidget(
                  onCollpase: onCollpase,
                ),
          
                //* search
                const SearchWidget(),
          
                //* buildings types
                const BuildingTypiesWidget(),
          
                //* near from you
                const NearFromYouWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

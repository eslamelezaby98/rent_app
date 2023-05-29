import 'package:flutter/material.dart';
import 'package:rent_app/config/app_theme/app_color.dart';
import 'package:rent_app/widget/input/build_input.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: BuildInput(
            hintText: "Search address, or near you ",
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffA0DAFB),
                    Color(0xff0A8ED9),
                  ],
                  tileMode: TileMode.decal,
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.sort,
                  color: AppColor.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

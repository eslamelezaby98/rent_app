import 'package:flutter/material.dart';
import 'package:rent_app/config/app_theme/app_color.dart';

class NearFromYouWidget extends StatelessWidget {
  const NearFromYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Best for you",
            style: TextStyle(
              color: AppColor.black,
              fontSize: 16,
            ),
          ),
          trailing: Text(
            "See More",
            style: TextStyle(
              color: AppColor.textColor,
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(
          height: 320,
          child: ListView.builder(
            itemCount: 100,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 320,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/build.png",
                      ),
                    ),
                  ),
                  child: Opacity(
                    opacity: 0.65,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xff000000).withOpacity(0.80),
                            const Color(0xff0D0D0D),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 110,
                              child: Chip(
                                backgroundColor:
                                    const Color(0xff000000).withOpacity(0.24),
                                label: Row(
                                  children: [
                                    Icon(
                                      Icons.place_outlined,
                                      color: AppColor.white,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "1.8 km",
                                      style: TextStyle(
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dreamsville House",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.white,
                                      ),
                                    ),
                                    Text(
                                      "Jl. Sultan Iskandar Muda",
                                      style: TextStyle(
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

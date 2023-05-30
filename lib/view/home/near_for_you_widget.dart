import 'package:flutter/material.dart';

import '../../config/app_theme/app_color.dart';

class NearForYouWidget extends StatelessWidget {
  const NearForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Near for you",
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
          height: 500,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/build.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Orchad House",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.black,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Rp. 2.500.000.000 / Year",
                            style: TextStyle(
                              color: Color(0xff0A8ED9),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: const [
                                    Image(
                                      image: AssetImage(
                                        "assets/icon/IC_Bed.png",
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "6 Bedroom",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Color(0xff858585),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: const [
                                    Image(
                                      image: AssetImage(
                                        "assets/icon/Group.png",
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "4 Bathroom",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Color(0xff858585),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rent_app/config/app_theme/app_color.dart';
import 'package:rent_app/config/dummy/dummy.dart';

class ViewRentScreen extends StatelessWidget {
  const ViewRentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/build.png",
                ),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color(0xff000000).withOpacity(0.24),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                            color: AppColor.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor:
                              const Color(0xff000000).withOpacity(0.24),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_border),
                            color: AppColor.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //* Description
                  Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xff858585),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //* seller
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/person.png",
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Garry Allen",
                            ),
                            Text(
                              "Owner",
                              style: TextStyle(
                                color: Color(0xff858585),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 0,
                              color: const Color(0xff0A8ED9).withOpacity(0.50),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.call,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 0,
                              color: const Color(0xff0A8ED9).withOpacity(0.50),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.chat,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //* Gallery
                  const SizedBox(height: 20),
                  Text(
                    "Gallery",
                    style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/build.png",
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/map.png",
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Price",
                                      style: TextStyle(
                                        color: Color(0xff858585),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Rp. 2.500.000.000 / Year",
                                      style: TextStyle(
                                        color: AppColor.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:const Color(0xff0A8ED9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  )
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Rent Now",
                                  style: TextStyle(
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

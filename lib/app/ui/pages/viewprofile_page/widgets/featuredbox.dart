import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../theme/color_constant.dart';

Widget ProfileFeaturedBox() {
  return Container(
    width: Get.width,
    // color: Colors.red,
    child: Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 15.0),
      child: Column(
        children: [
          Row(
            children: [Text("Featured", style: boldText)],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: Get.height * 0.35,
            width: Get.width,
            // color: Colors.green,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: Get.width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(width: 1, color: dividerColor)),
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          color: Colors.white,
                          height: 42.0,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14.0, bottom: 14.0, left: 13.0),
                            child: Text(
                              "Post",
                              style: extra_small,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/featured/amazon.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        )),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ),
  );
}

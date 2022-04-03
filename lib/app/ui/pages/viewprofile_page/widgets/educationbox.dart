import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

Widget profileeducationbox() {
  return Container(
    // color: Colors.red,
    width: Get.width,
    child: Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: boldText,
          ),
          Container(
            width: Get.width,
            child: ListView.builder(
              itemCount: 1,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom: BorderSide(width: 1, color: dividerColor))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "JIET Group Of Institutions Jodhpur",
                              style: workHead,
                            ),
                            Text(
                              "Drop Out Computer Sciencte",
                              style: person_desc,
                            ),
                            Text(
                              "2019-2019",
                              style: extra_small,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}

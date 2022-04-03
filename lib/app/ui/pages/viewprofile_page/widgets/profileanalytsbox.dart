import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import '../../../theme/text_constant.dart';

Widget ProfileAnalyticBox() {
  return Container(
    width: Get.width,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1, color: grey1))),
    child: Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 14.0),
      child: Row(
        children: [
          const Icon(Icons.person),
          const SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("94 profile views",
                  style: boldText.copyWith(fontSize: 16.0)),
              const SizedBox(
                height: 3.0,
              ),
              Text(
                "Discover who's viewed your profile",
                style: person_desc.copyWith(fontSize: 13.0),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

Widget skillprofilebox() {
  return Container(
    width: Get.width,
    // color: Colors.red,
    child: Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Skills", style: boldText),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: dividerColor))),
                child: Padding(
                    padding: EdgeInsets.only(top: 13.0, bottom: 13.0),
                    child: Text(
                      "Flutter",
                      style: workHead,
                    )),
              );
            },
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15.0),
              child: Text("Show all 23 skills"),
            ),
          )
        ],
      ),
    ),
  );
}

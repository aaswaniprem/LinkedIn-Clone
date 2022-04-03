import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

Widget profieleLanguageBox() {
  return Container(
    width: Get.width,
    // color: Colors.red,
    child: Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Languages", style: boldText),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(width: 1, color: dividerColor))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "English",
                        style: workHead,
                      ),
                      Text(
                        "Full professional profieciency",
                        style: extra_small,
                      )
                    ],
                  ),
                ),
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

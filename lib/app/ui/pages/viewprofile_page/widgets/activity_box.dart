import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';
import '../../../theme/color_constant.dart';
import '../../../theme/text_constant.dart';

Widget ProfileActivityBox() {
  return Container(
    width: Get.width,
    // color: Colors.red,
    child: Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Activity", style: boldText),
          Text(
            "12,224 followers",
            style: bluetext,
          ),
          Container(
            // height: Get.height * 0.26,
            width: Get.width,
            // color: Colors.red,
            child: ListView.builder(
              itemCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: const BoxDecoration(
                      // color: Colors.red,
                      border: Border(
                          bottom: BorderSide(width: 1.3, color: dividerColor))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledText(
                          text: "<b>Prem Aaswani </b>commented on a post",
                          style: extra_small,
                          tags: {
                            'b': StyledTextTag(
                                style: bluetext.copyWith(color: reationColor))
                          },
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Congrats",
                          style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "7 .14 comments",
                          style: extra_small,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.white,
            width: Get.width,
            child: Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Show All Activity",
                      style: bluetext.copyWith(
                          fontSize: 16.0, color: reationColor)),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

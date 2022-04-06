import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/profilemodel.dart';
import '../../../theme/color_constant.dart';
import '../../../theme/text_constant.dart';

Widget experienceBox() {
  return Container(
    // color: Colors.red,
    width: Get.width,
    child: Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: boldText,
          ),
          Container(
            width: Get.width,
            child: ListView.builder(
              itemCount: experienceList.length,
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
                          decoration: BoxDecoration(
                              color: dividerColor,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage(experienceList[index].image))),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(experienceList[index].name,
                                style: GoogleFonts.robotoSlab(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0)),
                            // SizedBox(
                            //   height: 2.0,
                            // ),
                            Text(
                              experienceList[index].description,
                              style: person_desc,
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              experienceList[index].time,
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
          )
        ],
      ),
    ),
  );
}

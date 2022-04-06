import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/profilemodel.dart';
import 'package:linkedin_clone/app/data/models/reactionmodel.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import '../../../theme/text_constant.dart';

Widget ProfileAnalyticBox(ProfileAnalyticModel model) {
  return Container(
    width: Get.width,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1, color: grey1))),
    child: Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 14.0),
      child: Row(
        children: [
          Icon(
            model.icon,
            color: reationColor,
          ),
          const SizedBox(
            width: 15.0,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.name,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17.0)),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  model.description,
                  style: person_desc.copyWith(fontSize: 13.0),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

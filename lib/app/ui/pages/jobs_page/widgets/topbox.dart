import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget JobTopBox() {
  return Container(
    height: 50.0,
    width: Get.width,

    // color: Colors.green,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(
              Icons.bookmark_border,
              color: Color(0xff666666),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "My Jobs",
              style: GoogleFonts.openSans(
                  color: Color(0xff191919),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.post_add,
              color: Color(0xff666666),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "Post a job",
              style: GoogleFonts.openSans(
                  color: Color(0xff191919),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0),
            )
          ],
        )
      ],
    ),
  );
}

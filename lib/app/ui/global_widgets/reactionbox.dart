import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

Widget reactionBox() {
  return Container(
    width: Get.width,
    height: 42.0,
    child: Padding(
      padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 13.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35.0,
            width: 70.0,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 1, color: Colors.white),
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.thumb_up,
                      size: 12.0,
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.blue,
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.thumb_up,
                        size: 12.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 34.0,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.blue,
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.thumb_up,
                        size: 12.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            "792",
            style: extra_small,
          ),
          Spacer(),
          Text("90 comments", style: extra_small)
        ],
      ),
    ),
  );
}

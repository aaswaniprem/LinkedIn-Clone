import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

Widget reactionBox() {
  return Container(
    width: Get.width,
    height: 38.0,
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
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 1, color: Colors.white),
                      shape: BoxShape.circle),
                  child: Image.asset(
                    "images/reactionicon/react1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.blue,
                          shape: BoxShape.circle),
                      child: Image.asset(
                        "images/reactionicon/react2.png",
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                  left: 34.0,
                  child: Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.blue,
                          shape: BoxShape.circle),
                      child: Image.asset(
                        "images/reactionicon/react3.png",
                        fit: BoxFit.fill,
                      )),
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

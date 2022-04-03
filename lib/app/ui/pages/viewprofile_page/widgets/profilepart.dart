import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return //profile part
        Container(
      height: Get.height * 0.23,
      width: Get.width,
      // color: Colors.red,
      child: Stack(
        children: [
          Container(
            height: Get.height * 0.144,
            width: Get.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/other/bg.png"))),
          ),
          Positioned(
            bottom: 5,
            left: lpadding,
            child: Container(
              height: 110,
              width: 110,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/other/profile1.jpeg"))),
            ),
          ),
        ],
      ),
    );
  }
}

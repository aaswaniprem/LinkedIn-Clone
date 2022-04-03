import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/timelinepostmodel.dart';
import 'package:linkedin_clone/app/ui/pages/detailpost_page/detailpost_page.dart';
import 'package:linkedin_clone/app/ui/pages/home_page/widgets/timelinepostbox.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: ListView(
          children: [
            SizedBox(
              height: 8.0,
              width: Get.width,
            ),
            ListView.builder(
              itemCount: timelinelist.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return timelinePostBox(
                    name: timelinelist[index].name,
                    description: timelinelist[index].description,
                    imagepath: timelinelist[index].image);
              },
            ),
            SizedBox(
              height: 50.0,
            )
          ],
        ));
  }
}

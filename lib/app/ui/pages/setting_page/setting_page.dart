import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/data/models/settingmodel.dart';
import 'package:linkedin_clone/app/ui/pages/splash_page/splash_page.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/setting_controller.dart';

class SettingPage extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            'Settings',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                color: Colors.black),
          ),
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.arrow_back,
            color: reationColor,
          ),
        ),
        body: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: settinglist1.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: dividerColor))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 13.0, right: 13.0, top: 15.0, bottom: 15.0),
                    child: Row(
                      children: [
                        Icon(
                          settinglist1[index].icondata,
                          color: reationColor,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                settinglist1[index].name,
                                style: lato17black,
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(settinglist1[index].description)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: settingList2.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, top: 15.0, bottom: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => SplashPage());
                    },
                    child: Text(
                      settingList2[index],
                      style: bluetext.copyWith(
                          color: reationColor, fontSize: 15.0),
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}

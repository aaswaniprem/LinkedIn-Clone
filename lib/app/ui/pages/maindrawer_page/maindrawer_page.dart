import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/data/models/drawermodel.dart';
import 'package:linkedin_clone/app/ui/global_widgets/widget.dart';
import 'package:linkedin_clone/app/ui/pages/maindrawer_page/widgets/drawerlist.dart';
import 'package:linkedin_clone/app/ui/pages/setting_page/setting_page.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/viewprofile_page.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

class MainDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return SafeArea(
      child: Container(
        height: height,
        width: width * 0.7,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              // height: height * 0.18,
              color: bg,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 216, 212, 212)))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("images/user.jpg"),
                                          fit: BoxFit.fill)),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Prem Aaswani",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.to(() => ViewProfilePage());
                                          },
                                          child: Text(
                                            "View Profile",
                                            style: bluetext,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Get.to(() => SettingPage());
                                          },
                                          child: Text(
                                            "Settings",
                                            style: bluetext,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    color: bg,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 13.0, top: 15.0, bottom: 15.0),
                      child: Row(
                        children: [
                          Container(
                            height: 20.0,
                            width: 20.0,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            "Try Premium for free",
                            style: bluetext.copyWith(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  drawerList("Recent", recentlist),
                  SizedBox(
                    height: 15.0,
                  ),
                  dividerwidget(thickness: 1.0, height: 1.0),
                  drawerList("Groups", drawergroups),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listContainer(text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(text,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Colors.grey[700])),
            ),
          )),
    );
  }
}

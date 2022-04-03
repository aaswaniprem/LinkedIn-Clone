import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/global_widgets/widget.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/activity_box.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/educationbox.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/experiencebox.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/featuredbox.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/languages.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/profileanalytsbox.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/profilebio.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/profilepart.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/widgets/skillsbox.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import 'package:styled_text/styled_text.dart';
import '../../../controllers/viewprofile_controller.dart';

class ViewProfilePage extends GetView<ViewProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SafeArea(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //profile part
            ProfileBox(),

            //profile bio
            ProfileBio(),

            const SizedBox(
              height: 20.0,
            ),

            // Container(
            //   height: Get.height * 0.42,
            //   width: Get.width,
            //   color: Colors.red,
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 15.0, left: 13.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           "Suggested For You",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 24.0,
            //               fontWeight: FontWeight.bold),
            //         ),
            //         SizedBox(
            //           height: 5.0,
            //         ),
            //         Text("Private To You"),
            //         SizedBox(
            //           height: 15.0,
            //         ),
            //         Container(
            //           height: Get.height * 0.28,
            //           width: Get.width,
            //           child: ListView.builder(
            //             itemCount: 4,
            //             scrollDirection: Axis.horizontal,
            //             itemBuilder: (BuildContext context, int index) {
            //               return Padding(
            //                 padding: const EdgeInsets.only(left: 15.0),
            //                 child: Container(
            //                   height: Get.height * 0.25,
            //                   width: Get.width * 0.86,
            //                   color: Colors.green,
            //                 ),
            //               );
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            dividerwidget(thickness: 4.0, height: 4.0),
            Container(
              width: Get.width,
              // color: Colors.red,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 13.0, top: 10.0, right: 13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Analytics", style: boldText),
                    Text("Private To You", style: person_desc),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return ProfileAnalyticBox();
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            dividerwidget(height: 4.0, thickness: 4.0),
            Container(
              width: Get.width,
              // color: Colors.red,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 13.0, top: 15.0, right: 13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Resources",
                      style: boldText,
                    ),
                    Text(
                      "Private To You",
                      style: person_desc,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return ProfileAnalyticBox();
                      },
                    ),
                    Container(
                      width: Get.width,
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Center(child: Text("Show all 5 resources")),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            dividerwidget(height: 4.0, thickness: 4.0),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 13.0, right: 13.0, top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: boldText,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                        "Experienced Freelance with a demonstrated history of working in the internet community . Skilled in firebase , PHP,Communication  , Android Development and leadershop",
                        style: person_desc.copyWith(fontSize: 14.0)),
                    SizedBox(
                      height: 15.0,
                    )
                  ],
                ),
              ),
            ),
            dividerwidget(height: 4.0, thickness: 4.0),
            ProfileFeaturedBox(),

            const SizedBox(
              height: 20.0,
            ),

            dividerwidget(height: 4.0, thickness: 4.0),

            ProfileActivityBox(),
            dividerwidget(height: 4.0, thickness: 4.0),
            experienceBox(),
            const Divider(
              height: 8.0,
              thickness: 8.0,
              color: divider,
            ),

            profileeducationbox(),

            const Divider(
              height: 8.0,
              thickness: 8.0,
              color: divider,
            ),
            skillprofilebox(),

            dividerwidget(
              height: 4.0,
              thickness: 4.0,
            ),

            profieleLanguageBox(),
            dividerwidget(
              height: 4.0,
              thickness: 4.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                height: Get.height * 0.8,
                width: Get.width * 0.9,
                child: _tabSection())
          ],
        ),
      ),
    );
  }

  Widget _tabSection() {
    return DefaultTabController(
      length: 4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TabBar(
              indicatorColor: greenColor,
              labelColor: greenColor,
              labelStyle: bluetext.copyWith(fontSize: 16.0),
              labelPadding: EdgeInsets.zero,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Home"),
                Tab(text: "Articles"),
                Tab(text: "User"),
                Tab(text: "School"),
              ]),
          Expanded(
            child: Container(
              color: Colors.red,
              child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Education",
                            style: boldText,
                          ),
                          ListView.builder(
                            itemCount: 3,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1, color: dividerColor))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, bottom: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.0,
                                        width: 50.0,
                                        color: Colors.yellow,
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "JIET Group Of Institutions Jodhpur",
                                            style: workHead,
                                          ),
                                          Text(
                                            "Drop Out Computer Sciencte",
                                            style: person_desc,
                                          ),
                                          Text(
                                            "2019-2019",
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
                        ],
                      ),
                    ),
                    Container(
                      child: const Text("Articles Body"),
                    ),
                    Container(
                      child: const Text("User Body"),
                    ),
                    Container(
                      child: const Text("User Body"),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

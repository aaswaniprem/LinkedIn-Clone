import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/invitationsmodel.dart';
import 'package:linkedin_clone/app/ui/global_widgets/4list.dart';
import 'package:linkedin_clone/app/ui/global_widgets/network_item.dart';
import 'package:linkedin_clone/app/ui/global_widgets/widget.dart';
import 'package:linkedin_clone/app/ui/pages/invitation_page/invitation_page.dart';
import 'package:linkedin_clone/app/ui/pages/managenetwork_page/managenetwork_page.dart';
import 'package:linkedin_clone/app/ui/pages/mynetwork_page/widgets/invitation_receive_tile.dart';
import 'package:linkedin_clone/app/ui/pages/mynetwork_page/widgets/pages_recommended.dart';
import 'package:linkedin_clone/app/ui/pages/recommendation_page/recommendation_page.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

import '../../../controllers/mynetwork_controller.dart';

class MyNetworkPage extends GetView<MyNetworkController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(ManageNetworkPage());
            },
            child: Container(
              height: 46.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Manage my network",
                      style: GoogleFonts.lato(
                          color: blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: grey2,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () {
              Get.to(() => InvitationPage());
            },
            child: Container(
              height: 46.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Invitations",
                      style: GoogleFonts.lato(
                          color: blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: grey2,
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 2.0,
            thickness: 2.0,
            color: grey1,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return invitationTile(
                  invitationUsers[index].name,
                  invitationUsers[index].imageUrl,
                  invitationUsers[index].profession,
                  invitationUsers[index].mututalFriends);
            },
          ),
          GestureDetector(
            onTap: () {
              Get.to(InvitationPage());
            },
            child: Container(
              height: 46.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                child: Center(
                  child: Text(
                    "Show More",
                    style: GoogleFonts.lato(
                        color: blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                ),
              ),
            ),
          ),
          dividerwidget(height: 7.0, thickness: 7.0),
          List4(),
          dividerwidget(height: 7.0, thickness: 7.0),
          List4(),
          dividerwidget(height: 7.0, thickness: 7.0),

          //recommended pages
          recommededPages(),

          dividerwidget(height: 7.0, thickness: 7.0),

          //recommended invitations

          Column(
            children: [
              Container(
                color: Colors.white,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, top: 10.0, bottom: 15.0),
                  child: Column(
                    children: [
                      Text(
                        "People you may know from JIET Group of Institutions Jodhpur",
                        style: GoogleFonts.lato(
                            fontSize: 17.0, color: Color(0xff434343)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(
                        left: 13.0,
                        right: 13.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            width: 210.0,
                            // height: 350,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                border: Border.all(
                                    color: dividerColor, width: 1.5)),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(14.0),
                                        topRight: Radius.circular(14.0),
                                      ),

                                      // color: Colors.red,
                                      // color: grey1,
                                    ),
                                    height: 140.0,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(14.0),
                                                  topRight:
                                                      Radius.circular(14.0),
                                                ),
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        "images/other/bg.png"))),
                                            height: 90.0,
                                            width: Get.width,
                                          ),
                                        ),
                                        Positioned(
                                            top: 30,
                                            left: 13,
                                            bottom: 4.0,
                                            child: Container(
                                              height: 90.0,
                                              width: 90.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          invitationUsers[index]
                                                              .imageUrl))),
                                            )),
                                        Positioned(
                                          bottom: 10.0,
                                          right: 10,
                                          child: Container(
                                            height: 30.0,
                                            width: 80.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  18.0,
                                                ),
                                                border: Border.all(
                                                    width: 1.8, color: blue)),
                                            child: Center(
                                                child: Text(
                                              "Follow",
                                              style: bluetext,
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 13.0, right: 13.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(invitationUsers[index].name,
                                            style: GoogleFonts.lato(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w600)),
                                        SizedBox(
                                          height: 6.0,
                                        ),
                                        Container(
                                          // color: Colors.red,

                                          // color: Colors.red,
                                          child: Text(
                                            invitationUsers[index].profession,
                                            style: professiontext,
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(RecommendationPage());
                      },
                      child: Text(
                        "See all",
                        style: show_more,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 20.0,
              // ),
            ],
          ),
          dividerwidget(height: 7.0, thickness: 7.0),
        ],
      ),
    );
  }
}

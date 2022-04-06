import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/profilemodel.dart';
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
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: reationColor,
        ),
        title: Center(
          child: Container(
            decoration: BoxDecoration(
                color: search, borderRadius: BorderRadius.circular(5.0)),
            height: 40.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: grey,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Prem Aaswani",
                    style: GoogleFonts.openSans(color: grey, fontSize: 17.0),
                  )
                ],
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                // Get.to(MessagesPage());
              },
              icon: Icon(
                Icons.settings,
                color: grey2,
              ),
            ),
          )
        ],
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
                    Row(
                      children: [
                        Icon(
                          Icons.visibility,
                          color: reationColor,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text("Private To You", style: person_desc),
                      ],
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: panalyticlist.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return ProfileAnalyticBox(panalyticlist[index]);
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
                      itemCount: resourceslist.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return ProfileAnalyticBox(resourceslist[index]);
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
                        style: monsterrat14),
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
          ],
        ),
      ),
    );
  }
}

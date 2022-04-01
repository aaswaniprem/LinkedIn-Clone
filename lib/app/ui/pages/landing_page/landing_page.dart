import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/pages/addpost_page/addpost_page.dart';
import 'package:linkedin_clone/app/ui/pages/home_page/home_page.dart';
import 'package:linkedin_clone/app/ui/pages/jobs_page/jobs_page.dart';
import 'package:linkedin_clone/app/ui/pages/messages_page/messages_page.dart';
import 'package:linkedin_clone/app/ui/pages/mynetwork_page/mynetwork_page.dart';
import 'package:linkedin_clone/app/ui/pages/notification_page/notification_page.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/viewprofile_page.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import '../../../controllers/landing_controller.dart';

class LandingPage extends GetView<LandingController> {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: grey1, width: 2))),
          height: 60,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            backgroundColor: Colors.white,
            unselectedItemColor: grey2,
            selectedItemColor: Colors.black,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.group,
                    size: 20.0,
                  ),
                ),
                label: 'My Network',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.post_add,
                    size: 20.0,
                  ),
                ),
                label: 'Post',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.notifications,
                    size: 20.0,
                  ),
                ),
                label: 'Notifications',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.work,
                    size: 20.0,
                  ),
                ),
                label: 'Jobs',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 11.0, bottom: 11.0),
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
          ),
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
                    "Search",
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
                Get.to(MessagesPage());
              },
              icon: Icon(
                Icons.chat,
                color: grey,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: buildBottomNavigationMenu(context),
      body: Obx(() => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomePage(),
              MyNetworkPage(),
              ViewProfilePage(),
              NotificationPage(),
              JobsPage()
            ],
          )),
    );
  }
}

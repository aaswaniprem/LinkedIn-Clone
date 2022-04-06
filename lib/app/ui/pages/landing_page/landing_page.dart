import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/pages/addpost_page/addpost_page.dart';
import 'package:linkedin_clone/app/ui/pages/home_page/home_page.dart';
import 'package:linkedin_clone/app/ui/pages/jobs_page/jobs_page.dart';
import 'package:linkedin_clone/app/ui/pages/maindrawer_page/maindrawer_page.dart';
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
    return Obx(
      () => Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: dividerColor, width: 1))),
        child: CustomLineIndicatorBottomNavbar(
          // showUnselectedLabels: true,
          // showSelectedLabels: true,
          // type: BottomNavigationBarType.fixed,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          backgroundColor: Colors.white,
          unSelectedColor: grey2,
          selectedColor: Colors.black,
          // unselectedLabelStyle: unselectedLabelStyle,
          // selectedLabelStyle: selectedLabelStyle,
          customBottomBarItems: [
            CustomBottomBarItems(
              icon: Icons.home,
              label: 'Home',
            ),
            CustomBottomBarItems(
              icon: Icons.group,
              label: 'My Network',
              // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            CustomBottomBarItems(
              icon: Icons.post_add,
              label: 'Post',
            ),
            CustomBottomBarItems(
              icon: Icons.notifications,
              label: 'Notifications',
            ),
            CustomBottomBarItems(
              icon: Icons.work,
              label: 'Jobs',
            ),
          ],
        ),
      ),
    );
  }

  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: bg,
      drawer: MainDrawerPage(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 11.0, bottom: 11.0),
          child: GestureDetector(
            onTap: () {
              globalKey.currentState!.openDrawer();
            },
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  image: DecorationImage(image: AssetImage("images/user.jpg"))),
            ),
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
                color: grey2,
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

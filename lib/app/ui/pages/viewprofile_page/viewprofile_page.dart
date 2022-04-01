import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/viewprofile_controller.dart';

class ViewProfilePage extends GetView<ViewProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Get.height * 0.27,
            width: Get.width,
            // color: Colors.red,
            child: Stack(
              children: [
                Container(
                  height: Get.height * 0.18,
                  width: Get.width,
                  color: Colors.green,
                ),
                Positioned(
                  bottom: 5,
                  left: lpadding,
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.yellow),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Prem Aaswani",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                Text("Flutter Developer"),
                Text("Freelance,self-employed"),
                Text("Jodhpur, Rajasthan, India"),
                Text("500+ connections"),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40.0,
                        width: 140.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40.0,
                        width: 140.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.0,
                ),
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(width: 1, color: Colors.grey)),
                )
              ],
            ),
          )
          //  Text("pREM")
          ,
          SizedBox(
            height: 20.0,
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            height: Get.height * 0.42,
            width: Get.width,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Suggested For You",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Private To You"),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: Get.height * 0.28,
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            height: Get.height * 0.25,
                            width: Get.width * 0.86,
                            color: Colors.green,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            width: Get.width,
            color: Colors.red,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 13.0, top: 15.0, right: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Analytics",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Private To You",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300),
                  ),
                  Container(
                    width: Get.width,
                    height: Get.height * 0.4,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: grey1)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 18.0, bottom: 18.0),
                            child: Row(
                              children: [
                                Icon(Icons.person),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "94 profile views",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text("Discover who's viewed your profile"),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );

                        ;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: Get.width,
            color: Colors.red,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 13.0, top: 15.0, right: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Resources",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Private To You",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300),
                  ),
                  Container(
                    width: Get.width,
                    height: Get.height * 0.28,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: grey1)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 18.0, bottom: 18.0),
                            child: Row(
                              children: [
                                Icon(Icons.person),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "94 profile views",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text("Discover who's viewed your profile"),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );

                        ;
                      },
                    ),
                  ),
                  Container(
                    width: Get.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Center(child: Text("Show all 5 resources")),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 13.0, right: 13.0, top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                      "Experienced Freelance with a demonstrated history of working in the internet community . Skilled in firebase , PHP,Communication  , Android Development and leadershop")
                ],
              ),
            ),
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            width: Get.width,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Featured",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: Get.height * 0.35,
                    width: Get.width,
                    // color: Colors.green,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            width: Get.width * 0.9,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(width: 1, color: grey2)),
                            child: Column(
                              children: [
                                Container(
                                  width: Get.width,
                                  color: grey1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 14.0, bottom: 14.0),
                                    child: Text("Post"),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  width: Get.width,
                                  color: Colors.green,
                                )),
                                Container(
                                  width: Get.width,
                                  color: grey1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 14.0, bottom: 14.0),
                                    child: Text("Post"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            width: Get.width,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22.0),
                  ),
                  Text("12,224 followers"),
                  Container(
                    // height: Get.height * 0.26,
                    width: Get.width,
                    color: Colors.red,
                    child: ListView.builder(
                      itemCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(width: 1, color: grey2))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Prem Aaswani commented on a post"),
                                Text("Congrats"),
                                Text("7 .14 comments")
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Text(
                        "Show All Activity",
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            color: Colors.red,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Experience",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24.0),
                  ),
                  Container(
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(width: 1, color: grey2))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Freelance Developer"),
                                    Text(
                                        "Freelance , self-employed. Full-tIME"),
                                    Text("Jan2021 - Present -1yr 4 mos")
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            color: Colors.red,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Education",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24.0),
                  ),
                  Container(
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: 1,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(width: 1, color: grey2))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("JIET Group Of Institutions Jodhpur"),
                                    Text("Drop Out Computer Sciencte"),
                                    Text("2019-2019")
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            width: Get.width,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Skills",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          child: Text("Flutter"),
                        ),
                      );
                    },
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                      child: Text("Show all 23 skills"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 8.0,
            thickness: 8.0,
            color: divider,
          ),
          Container(
            width: Get.width,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Languages",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          child: Text("Flutter"),
                        ),
                      );
                    },
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                      child: Text("Show all 23 skills"),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              height: Get.height * 0.5,
              width: double.infinity,
              child: _tabSection())
        ],
      )),
    );
  }

  Widget _tabSection() {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: TabBar(tabs: [
              Tab(text: "Home"),
              Tab(text: "Articles"),
              Tab(text: "User"),
            ]),
          ),
          Flexible(
            child: Container(
              child: TabBarView(children: [
                Container(
                  child: Text("Home Body"),
                ),
                Container(
                  child: Text("Articles Body"),
                ),
                Container(
                  child: Text("User Body"),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

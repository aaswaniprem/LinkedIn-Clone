import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/reactionmodel.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/addpost_controller.dart';

class AddPostPage extends StatefulWidget {
  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // modalBottomSheetMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Share Post',
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: reationColor,
          ),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 13.0, right: 13.0, top: 15.0),
                child: Row(
                  children: [
                    Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/user.jpg",
                                ),
                                fit: BoxFit.fill))),
                    SizedBox(
                      width: 13.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            "Prem Aaswani",
                            style: lato16,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(width: 2, color: grey)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.public,
                                    size: 18.0,
                                  ),
                                  Text(
                                    "Anyone",
                                    style: lato16,
                                  ),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 20.0),
                    child: Text(
                      "What do you want to talk about",
                      style:
                          GoogleFonts.lato(color: reationColor, fontSize: 18.0),
                    ),
                  )),
              Spacer(),
              Container(
                height: 80.0,
                width: Get.width,
                // color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add hastag",
                        style: bluetext,
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      Flexible(
                        child: Row(
                          children: [
                            Container(
                              width: 200.0,
                              // color: Colors.yellow,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.photo_camera,
                                    color: reationColor,
                                    size: 26.0,
                                  ),
                                  Icon(
                                    Icons.videocam,
                                    color: reationColor,
                                    size: 26.0,
                                  ),
                                  Icon(
                                    Icons.image,
                                    color: reationColor,
                                    size: 26.0,
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    color: reationColor,
                                    size: 26.0,
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Text("Anyone")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

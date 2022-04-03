import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/detailpost_controller.dart';

class DetailPostPage extends GetView<DetailPostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          // title: Text('DetailPostPage'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: grey2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_outline,
                        size: 40.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Felipe Orlando",
                          style: person_name,
                        ),
                        Text(
                          "Founder & CEO at Generic Aadhaar | Managing Director at Swastya Lifestyle",
                          style: person_desc,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              '1w',
                              style: person_desc,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Icon(
                              Icons.public,
                              color: grey2,
                              size: 19.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                  height: Get.height * 0.4,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.creatopy.com/blog/wp-content/uploads/2016/06/images-for-banner-ads.png"),
                        fit: BoxFit.cover),
                  )),
              Container(
                height: 50.0,
                width: Get.width,
                color: Colors.white,
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: grey1,
              ),
              SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.thumb_up_alt,
                          color: grey2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Like",
                            style: GoogleFonts.actor(
                                color: grey2, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.comment,
                          color: grey2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Comment",
                            style: GoogleFonts.actor(
                                color: grey2, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: grey2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Share",
                            style: GoogleFonts.actor(
                                color: grey2, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.send,
                          color: grey2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Send",
                            style: GoogleFonts.actor(
                                color: grey2, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Reactions"),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 50.0,
                      width: Get.width,
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Comments"),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 150.0,
                      width: Get.width,
                      color: Colors.red,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.yellow),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 80.0,
                                  color: Colors.green,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.linked_camera,
                                    ),
                                    Icon(
                                      Icons.replay,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

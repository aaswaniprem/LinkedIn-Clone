import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: ListView(
          children: [
            SizedBox(
              height: 18.0,
              width: Get.width,
            ),
            Container(
              width: Get.width * 0.8,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                    child: Column(
                      children: [
                        Container(
                          height: 50.0,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Souvik Banerjee",
                                    style: GoogleFonts.roboto(
                                        color: black1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text("celebrates this",
                                      style: GoogleFonts.montserrat(
                                        color: grey2,
                                        fontSize: 15.0,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.8,
                          height: 1.8,
                          color: divider,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
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
                        Text(
                          text,
                          style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
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
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            )
          ],
        ));
  }
}

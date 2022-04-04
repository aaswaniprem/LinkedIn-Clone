import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import '../theme/text_constant.dart';

class NetworkItem extends StatelessWidget {
  final String image;
  final String name;
  final String profession;
  final int mutual;

  const NetworkItem(
      {Key? key,
      required this.image,
      required this.name,
      required this.profession,
      required this.mutual})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      // height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          border: Border.all(color: Colors.grey, width: 1.5)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                    // color: grey1,
                    ),
                height: 150.0,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("images/other/bg.png"))),
                          height: 70.0,
                          width: Get.width,
                        ),
                      ),
                    ),
                    Positioned.fill(
                        top: 30,
                        bottom: 17.0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(image))),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Column(
                children: [
                  Text("Arpita Sharma",
                      style: GoogleFonts.lato(
                          fontSize: 17.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    // color: Colors.red,
                    height: 40.0,
                    child: Text(
                      profession + profession,
                      style: professiontext,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.link),
                      SizedBox(
                        width: 1.0,
                      ),
                      Expanded(
                        child: Text(
                          "7 mutual friends",
                          style: person_desc.copyWith(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 13.0, right: 13.0),
              child: Container(
                height: 37.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: blue, width: 2),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Text(
                    "Connect",
                    style: person_name.copyWith(color: blue),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

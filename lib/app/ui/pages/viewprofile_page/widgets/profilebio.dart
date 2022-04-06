import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:styled_text/styled_text.dart';
import '../../../theme/text_constant.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0, right: 13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Prem Aaswani", style: boldText),
          const SizedBox(
            height: 4.0,
          ),
          Text("Flutter Developer", style: GoogleFonts.ubuntu(fontSize: 16.0)),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            "Freelance,self-employed",
            style: monsterrat14,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            "Jodhpur, Rajasthan, India",
            style: person_desc.copyWith(fontSize: 13),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "500+ connections",
            style: GoogleFonts.lato(
                color: blue, fontWeight: FontWeight.bold, fontSize: 14.0),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 34.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: blue,
                  ),
                  child: Center(
                    child: Text(
                      "Open to",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: reationColor),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Center(
                    child: Text(
                      "Add Section",
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: reationColor),
                    ),
                  ),
                  height: 34.0,
                  width: 140.0,
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
              ),
            ],
          ),
          const SizedBox(
            height: 13.0,
          ),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, bottom: 12.0, left: 13.0, right: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: StyledText(
                      textAlign: TextAlign.start,
                      text:
                          "<blue>Show recruiters you’re open to work</blue> — you control who sees this \n <blue>Get Started</blue>",
                      tags: {
                        'blue': StyledTextTag(
                          style: bluetext,
                        ),
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.clear,
                    size: 14.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    //  Text("pREM")
  }
}

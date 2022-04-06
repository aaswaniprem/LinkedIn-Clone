import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/reactionmodel.dart';
import 'package:linkedin_clone/app/data/models/timelinepostmodel.dart';
import 'package:linkedin_clone/app/ui/pages/detailpost_page/detailpost_page.dart';
import 'package:linkedin_clone/app/ui/pages/home_page/widgets/timelinepostbox.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: ListView(
          // shrinkWrap: true,
          children: [
            SizedBox(
              height: 8.0,
              width: Get.width,
            ),
            ListView.builder(
              itemCount: timelinelist.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return timelinePostBox(
                    name: timelinelist[index].name,
                    description: timelinelist[index].description,
                    imagepath: timelinelist[index].image,
                    profilePhoto: timelinelist[index].profilephoto);
              },
            ),
          ],
        ));
  }

  // _showEmojiReaction() {
  //   // final emojis = Provider.of<PostsProvider>(context, listen: false);
  //   return Container(
  //     height: 400.0,
  //     width: 300.0,
  //     color: Colors.red,
  //     child: Row(
  //       children: [
  //         Expanded(
  //           child: ReactionButton<String>(
  //             onReactionChanged: (String? value) {},
  //             reactions: reactions,
  //             initialReaction: Reaction<String>(
  //               value: null,
  //               icon: Icon(
  //                 Icons.language,
  //               ),
  //             ),
  //             boxElevation: 1,
  //             boxPosition: Position.BOTTOM,
  //             boxPadding:
  //                 const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  //             itemScale: 0.8,
  //             boxColor: Colors.white,
  //             boxRadius: 10,
  //             boxDuration: const Duration(milliseconds: 100),
  //             itemScaleDuration: const Duration(milliseconds: 100),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/notifcationsmodel.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import 'package:styled_text/styled_text.dart';
import '../../../controllers/notification_controller.dart';

class NotificationPage extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ListView.builder(
          itemCount: notificationsList.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  color: notificationColor,
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xffD0DDEA)))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 13.0, right: 13.0, top: 15.0, bottom: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        border: Border.all(
                          color: Colors.red,
                          width: 1.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: StyledText(
                          text: notificationsList[index].name,
                          tags: {
                            'b': StyledTextTag(
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          },
                          style: GoogleFonts.nunitoSans(
                              color: Color(0xff161819), fontSize: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    ));
  }
}

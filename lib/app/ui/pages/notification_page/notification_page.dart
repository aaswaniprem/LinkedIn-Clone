import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:styled_text/styled_text.dart';
import '../../../controllers/notification_controller.dart';

class NotificationPage extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          decoration: BoxDecoration(
              color: notificationColor,
              border: Border(bottom: BorderSide(width: 0.8, color: grey1))),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 13.0, right: 13.0, top: 20.0, bottom: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: DecorationImage(
                      image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.red,
                      width: 4.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Flexible(
                  child: StyledText(
                    text:
                        "Monica <b>Hillman</b> shared about being promoted to Instutora e Desenvolvedora de Software U at<b> Alura </b>Gostaria Decomapnies",
                    tags: {
                      'b': StyledTextTag(
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    },
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        )
     
     
     
      ],
    ));
  }
}

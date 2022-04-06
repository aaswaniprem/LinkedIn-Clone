import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/theme/chat_detail_page.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/messages_controller.dart';

class MessagesPage extends GetView<MessagesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('MessagesPage'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: dividerColor))),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 13.0, left: 13.0, top: 18.0, bottom: 18.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Search Messages",
                        style: professiontext,
                      ),
                      Spacer(),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(ChatDetailPage());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: dividerColor))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 13.0, right: 13.0, top: 15.0, bottom: 15.0),
                        child: Row(
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.yellow, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Akash Jain",
                                    style: GoogleFonts.lato(fontSize: 16.0)),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "You: Likewise",
                                  style: monsterrat14,
                                ),
                              ],
                            ),
                            Spacer(),
                            Text("Mond")
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

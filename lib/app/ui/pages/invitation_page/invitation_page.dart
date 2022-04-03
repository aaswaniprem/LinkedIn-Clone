import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/data/models/invitationsmodel.dart';
import 'package:linkedin_clone/app/ui/pages/mynetwork_page/widgets/invitation_receive_tile.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import '../../../controllers/invitation_controller.dart';

class InvitationPage extends GetView<InvitationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Invitaions'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60.0,
                width: Get.width,
                color: bgcolor,
              ),
              Container(
                height: 60.0,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(width: 1, color: dividerColor))),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: invitationUsers.length,
                itemBuilder: (BuildContext context, int index) {
                  return invitationTile(
                      invitationUsers[index].name,
                      invitationUsers[index].imageUrl,
                      invitationUsers[index].profession,
                      invitationUsers[index].mututalFriends);
                },
              ),
            ],
          ),
        ));
  }
}

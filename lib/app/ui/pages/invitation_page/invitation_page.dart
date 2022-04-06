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
          elevation: 1,
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.arrow_back,
            color: reationColor,
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Invitations',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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

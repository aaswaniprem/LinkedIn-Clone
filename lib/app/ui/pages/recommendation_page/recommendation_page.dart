import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/data/models/invitationsmodel.dart';
import 'package:linkedin_clone/app/ui/global_widgets/network_item.dart';
import '../../../controllers/recommendation_controller.dart';

class RecommendationPage extends GetView<RecommendationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text('RecommendationPage'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, left: 13.0, right: 13.0, bottom: 10.0),
          child: Column(
            children: [
              Text(
                "People you may know from JIET Group of Institutions Jodhpur",
                style: TextStyle(fontSize: 19.0),
              ),
              SizedBox(
                height: 16.0,
              ),
              StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                crossAxisSpacing: 8,
                mainAxisSpacing: 10,
                itemBuilder: (context, index) {
                  return NetworkItem(
                      image: invitationUsers[index].imageUrl,
                      name: invitationUsers[index].name,
                      profession: invitationUsers[index].profession,
                      mutual: invitationUsers[index].mututalFriends);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ],
          ),
        )));
  }
}

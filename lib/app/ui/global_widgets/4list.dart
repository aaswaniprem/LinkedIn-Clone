import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/invitationsmodel.dart';
import 'package:linkedin_clone/app/ui/global_widgets/network_item.dart';
import 'package:linkedin_clone/app/ui/pages/recommendation_page/recommendation_page.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

class List4 extends StatelessWidget {
  final String text;
  final int count;

  const List4({Key? key, required this.text, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 13.0, right: 13.0, top: 10.0, bottom: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.lato(
                      fontSize: 17.0, color: Color(0xff434343)),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 13.0, right: 13.0, bottom: 10.0),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: count,
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
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => RecommendationPage());
                },
                child: Text(
                  "See all",
                  style: show_more,
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
        // SizedBox(
        //   height: 20.0,
        // ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/global_widgets/network_item.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

class List4 extends StatelessWidget {
  const List4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 13.0, right: 13.0, top: 10.0, bottom: 15.0),
            child: Column(
              children: [
                Text(
                  "People you may know from JIET Group of Institutions Jodhpur",
                  style: GoogleFonts.lato(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
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
                  itemCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  itemBuilder: (context, index) {
                    return NetworkItem();
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
              Text(
                "See all",
                style: show_more,
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      
      
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

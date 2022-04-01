import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/global_widgets/4list.dart';
import 'package:linkedin_clone/app/ui/global_widgets/network_item.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

import '../../../controllers/mynetwork_controller.dart';

class MyNetworkPage extends GetView<MyNetworkController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: ListView(
        children: [
          Container(
            height: 46.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Manage my network",
                    style: GoogleFonts.lato(
                        color: blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: grey2,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 46.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Invitations",
                    style: GoogleFonts.lato(
                        color: blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: grey2,
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 2.0,
            thickness: 2.0,
            color: grey1,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: grey1,
                  width: 1.0,
                ),
                bottom: BorderSide(
                  color: grey1,
                  width: 1.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 18.0, bottom: 18.0, left: 13.0, right: 13.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: grey2,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_outline,
                        size: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Felipe Orlando",
                          style: GoogleFonts.lato(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Founder & CEO at theGeneric Aadhaar | Managing Director at Swastya Lifestyle",
                          style: GoogleFonts.montserrat(
                            color: grey2,
                            fontSize: 17.0,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              '1w',
                              style: person_desc.copyWith(fontSize: 17.0),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Icon(
                              Icons.public,
                              color: grey2,
                              size: 19.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: grey2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.clear,
                            size: 34.0,
                            color: grey2,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: blue)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.done,
                            size: 34.0,
                            color: blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: grey1,
                  width: 1.0,
                ),
                bottom: BorderSide(
                  color: grey1,
                  width: 1.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 18.0, bottom: 18.0, left: 13.0, right: 13.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: grey2,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_outline,
                        size: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Rajat Agarwal",
                          style: GoogleFonts.lato(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Founder & CEO at theGeneric Aadhaar | Managing Director at Swastya Lifestyle",
                          style: GoogleFonts.montserrat(
                            color: grey2,
                            fontSize: 17.0,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              '1w',
                              style: person_desc.copyWith(fontSize: 17.0),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Icon(
                              Icons.public,
                              color: grey2,
                              size: 19.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: grey2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.clear,
                            size: 34.0,
                            color: grey2,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: blue)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.done,
                            size: 34.0,
                            color: blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 46.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Center(
                child: Text(
                  "Show More",
                  style: GoogleFonts.lato(
                      color: blue, fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          List4(),
          List4(),
          SizedBox(
            height: 20.0,
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
                      return Container(
                        width: 240.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            border: Border.all(color: Colors.grey, width: 1.5)),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 14.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  height: 150.0,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                            ),
                                            height: 80.0,
                                            width: Get.width,
                                          ),
                                        ),
                                      ),
                                      Positioned.fill(
                                          top: 30,
                                          bottom: 17.0,
                                          left: 38.0,
                                          right: 38.0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 13.0, right: 13.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Javascript",
                                      style:
                                          person_name.copyWith(fontSize: 19.0),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      "209,744 followers",
                                      style:
                                          person_desc.copyWith(fontSize: 16.0),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 13.0, right: 13.0),
                                child: Container(
                                  height: 37.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: blue, width: 2),
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Center(
                                    child: Text(
                                      "Connect",
                                      style: person_name.copyWith(color: blue),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );

                      ;
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
        ],
      ),
    );
  }
}

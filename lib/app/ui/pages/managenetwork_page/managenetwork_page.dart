import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/data/models/network_list.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import '../../../controllers/managenetwork_controller.dart';

class ManageNetworkPage extends GetView<ManageNetworkController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Manage my Network',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20.0, color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back,
          color: reationColor,
        ),
      ),
      body: ListView.builder(
        itemCount: networkslist.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: dividerColor))),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 15.0, right: 13.0, left: 13.0),
              child: Row(children: [
                Icon(Icons.person),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  networkslist[index].name,
                  style: GoogleFonts.lato(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  networkslist[index].total.toString(),
                  style: GoogleFonts.lato(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}

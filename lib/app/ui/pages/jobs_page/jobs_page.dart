import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import '../../../controllers/jobs_controller.dart';

class JobsPage extends GetView<JobsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.0,
            width: Get.width,
            color: Colors.green,
          ),
          Divider(
            height: 9,
            thickness: 9,
            color: grey1,
          ),
          Container(
            width: Get.width,
            // height: Get.height * 0.6,
            color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 14.0),
                  child: Text(
                    "Recommended for you",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(width: 1, color: grey1))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.yellow, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Software Engineer (Fresher)"),
                                Text("Geeks Ant"),
                                Text("Bengalaru , Karnatka , India(Remote)"),
                                Text("Actively recruiting"),
                                Row(
                                  children: [
                                    Text("2 days ago"),
                                    Text('Easy Apply')
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.bookmark_border)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

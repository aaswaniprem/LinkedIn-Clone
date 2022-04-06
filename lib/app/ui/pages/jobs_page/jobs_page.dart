import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/data/models/jobsmodel.dart';

import 'package:linkedin_clone/app/ui/pages/jobs_page/widgets/topbox.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
import '../../../controllers/jobs_controller.dart';

class JobsPage extends GetView<JobsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //t0p container box
              JobTopBox(),
              Divider(
                height: 9,
                thickness: 9,
                color: grey1,
              ),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(
                    left: 13.0, top: 8.0, bottom: 8.0, right: 13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Recent Searches",
                          style: lato16,
                        ),
                        Spacer(),
                        Text("Clear"),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text("flutter", style: lato14grey),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "6 new",
                          style: lato14green,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      "Alert On Jaipur, Rajasthan, India 25 miles",
                      style: professiontext,
                    )
                  ],
                ),
              )),
              Divider(
                height: 9,
                thickness: 9,
                color: grey1,
              ),
              // SizedBox(
              //   height: 20.0,
              // ),
              Container(
                width: Get.width,
                // height: Get.height * 0.6,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 14.0),
                      child: Text("Recommended for you", style: lato16),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ListView.builder(
                      itemCount: jobsList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(width: 1, color: grey1))),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 13.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              jobsList[index].companyImage))),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      jobsList[index].jobtype,
                                      style: lato17,
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(jobsList[index].companyName,
                                        style: monsterrat14),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text("India(Remote)", style: monsterrat13),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 22.0,
                                          width: 22.0,
                                          decoration: BoxDecoration(
                                              color: Colors.yellow,
                                              shape: BoxShape.circle),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text("Your profile matches this job",
                                            style: monsterrat12),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        Text('33 minutes ago',
                                            style: lato14green),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text("Eassy Apply", style: monsterrat13)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
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

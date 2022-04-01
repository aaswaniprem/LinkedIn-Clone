import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import '../theme/text_constant.dart';

class NetworkItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                decoration: BoxDecoration(
                  color: grey1,
                ),
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
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Column(
                children: [
                  Text(
                    "Arpita Sharma",
                    style: person_name.copyWith(fontSize: 19.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Student at JIET Group of Insitutions Jodhpur",
                    style: person_desc.copyWith(fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.link),
                      SizedBox(
                        width: 1.0,
                      ),
                      Expanded(
                        child: Text(
                          "7 mutual friends",
                          style: person_desc.copyWith(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 13.0, right: 13.0),
              child: Container(
                height: 37.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: blue, width: 2),
                    borderRadius: BorderRadius.circular(20.0)),
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




  }
}

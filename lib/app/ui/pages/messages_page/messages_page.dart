import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/messages_controller.dart';

class MessagesPage extends GetView<MessagesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('MessagesPage'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60.0,
                width: Get.width,
                color: Colors.green,
              ),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 14.0, bottom: 14.0),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                color: Colors.yellow, shape: BoxShape.circle),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Akash Jain"),
                            Text("You: Likewise"),
                          ],
                        ),
                        Spacer(),
                        Text("Mond")
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

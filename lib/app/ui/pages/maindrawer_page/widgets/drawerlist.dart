import 'package:flutter/material.dart';
import 'package:linkedin_clone/app/data/models/drawermodel.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

Widget drawerList(String listname, List<Drawermodel> list) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 13.0, top: 15.0),
        child: Text(
          listname,
          style: professiontext.copyWith(color: blue),
        ),
      ),
      ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, top: 25.0),
              child: Row(
                children: [
                  Icon(
                    Icons.groups,
                    color: reationColor,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Flexible(
                    child: Text(
                      list[index].name,
                      style: lato14grey,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    ],
  );
}

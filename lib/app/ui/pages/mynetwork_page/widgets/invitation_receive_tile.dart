import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';

Widget invitationTile(
    String name, String imageUrl, String profession, int mutual) {
  return Container(
    decoration: const BoxDecoration(
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
              height: 70.0,
              width: 70.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(imageUrl)))),
          const SizedBox(
            width: 17.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.lato(fontSize: 20.0),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  profession,
                  style: GoogleFonts.montserrat(
                    color: grey2,
                    fontSize: 17.0,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      mutual.toString() + "mutual friends",
                      style: person_desc.copyWith(fontSize: 17.0),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    const Icon(
                      Icons.public,
                      color: grey2,
                      size: 19.0,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: grey2)),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.clear,
                    size: 34.0,
                    color: grey2,
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: blue)),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
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
  );
}

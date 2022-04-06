import 'package:flutter/material.dart';

class TimelinePost {
  final String name;
  final String image;
  final String likedbyUser;
  final String description;
  final String profilephoto;

  TimelinePost(
      {required this.name,
      required this.image,
      required this.likedbyUser,
      required this.description,
      required this.profilephoto});
}

List<TimelinePost> timelinelist = [
  TimelinePost(
      name: "Adam Grant",
      image: "images/timeline/adam1.jpeg",
      likedbyUser: "Muskan Agarwal",
      description:
          "It's not your job to fix a toxic workplace from the bottom If leaders at the top aren't committed to change, the best way to stay sane is to shield yourself and support your team .Your responsibility is to protect your well-being, your career, and the people you care about.",
      profilephoto: "images/personprofile/adam1.png"),
  TimelinePost(
      name: "Sara Blakely",
      image: "images/timeline/adam2.jpeg",
      likedbyUser: "Sonali Bhati",
      description:
          "To all the women and girls out there... never dim your light. The world needs YOU to shine bright. 🌟 👊Tag a woman in your life who inspires you and pass it on... #WomensHistoryMonth #Entrepreneur",
      profilephoto: "images/personprofile/brene1.png"),
  TimelinePost(
      name: "Brene Brown",
      image: "images/timeline/brene1.jpeg",
      likedbyUser: "Sonali Bhati",
      description:
          "Oh, the power in knowing that pain and sorrow are also part of the path. Susan Cain’s book “Bittersweet” is so healing. Especially now .Join us for Part 2 of this “Unlocking Us” conversation. https://bit.ly/3ractEX",
      profilephoto: "images/personprofile/sara1.png"),
  TimelinePost(
      name: "Suze Orman",
      image: "images/timeline/suze1.jpeg",
      likedbyUser: "Sonali Bhati",
      description:
          "Celebrate your savings. In the way you get pleasure from buying a new piece of clothing, a new car or whatever, the same should be true when you save money. It’s really that simple, my friends . #savemoney #celebrateyourwins",
      profilephoto: "images/personprofile/suze1.png"),
];

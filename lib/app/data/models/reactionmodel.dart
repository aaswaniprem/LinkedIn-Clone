import 'package:flutter/cupertino.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

List<Reaction<String>> reactions = [
  Reaction(
      icon: Image.asset(
        "images/reactionicon/heart.png",
        scale: 4,
      ),
      value: "Heart"),
  Reaction(
      icon: Image.asset(
        "images/reactionicon/celebration.png",
        scale: 4,
      ),
      value: "Celebration"),
  Reaction(
      icon: Image.asset(
        "images/reactionicon/curious.png",
        scale: 4,
      ),
      value: "Curious"),
  Reaction(
      icon: Image.asset(
        "images/reactionicon/insightful.png",
        scale: 4,
      ),
      value: "Insightful"),
  Reaction(
      icon: Image.asset(
        "images/reactionicon/like.png",
        scale: 4,
      ),
      value: "Like"),
];

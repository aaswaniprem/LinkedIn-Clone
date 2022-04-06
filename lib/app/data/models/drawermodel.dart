import 'package:flutter/material.dart';

class Drawermodel {
  final bool hastag;
  final String name;

  Drawermodel({this.hastag = false, required this.name});
}

List<Drawermodel> recentlist = [
  Drawermodel(name: "WorldWide Flutter - WWF"),
  Drawermodel(name: "flutter"),
  Drawermodel(name: "The Sparks Foundation Network"),
  Drawermodel(name: "Sindhi Professional in India"),
  Drawermodel(name: "Google Flutter"),
];

List<Drawermodel> drawergroups = [
  Drawermodel(name: "WorldWide Flutter - WWF"),
  Drawermodel(name: "The Sparks Foundation Network"),
  Drawermodel(name: "Sindhi Professional in India"),
];

List<Drawermodel> drawerFollowedHastag = [
  Drawermodel(name: "flutter"),
  Drawermodel(name: "ui"),
  Drawermodel(name: "softwareDeveloper"),
];

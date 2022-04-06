import 'package:flutter/material.dart';

class SettingModel {
  final String name;
  final String description;
  final IconData icondata;

  SettingModel(
      {required this.name, required this.description, required this.icondata});
}

List<SettingModel> settinglist1 = [
  SettingModel(
      name: "Account preferences",
      description:
          "Options for managing your account and experiences on LinkedIn",
      icondata: Icons.account_circle),
  SettingModel(
      name: "Sign in & Security",
      description:
          "Options and controls for signing in and keeping your account safe",
      icondata: Icons.lock),
  SettingModel(
      name: "Visibility",
      description: "Control who sees your activity and information on LinkedIn",
      icondata: Icons.visibility),
  SettingModel(
      name: "Communications",
      description: "Controls for emails , invites and notifications",
      icondata: Icons.email),
  SettingModel(
      name: "Data privacy",
      description:
          "Control how linkedin uses your information for general site and job seeking",
      icondata: Icons.security),
  SettingModel(
      name: "Data privacy",
      description:
          "Control how linkedin uses your information to serve your ads",
      icondata: Icons.topic),
];

List<String> settingList2 = [
  "Help Center",
  "Privacy Policy",
  "Accessibility",
  "User Agreement",
  "End User License Agreement",
  "Sign Out"
];

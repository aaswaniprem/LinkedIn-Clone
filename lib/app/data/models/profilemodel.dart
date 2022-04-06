import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAnalyticModel {
  final String name;
  final IconData icon;
  final String description;

  ProfileAnalyticModel(
      {required this.name, required this.icon, required this.description});
}

class ProfileExperienceModel {
  final String name;
  final String image;
  final String description;
  final String time;

  ProfileExperienceModel(
      {required this.name,
      required this.time,
      required this.image,
      required this.description});
}

List<ProfileAnalyticModel> panalyticlist = [
  ProfileAnalyticModel(
      name: "122 profile views",
      icon: Icons.people,
      description: "Discover who's viewed your profile"),
  ProfileAnalyticModel(
      name: "2,003 post views",
      icon: Icons.leaderboard,
      description: "Check out who's engaging with your posts"),
  ProfileAnalyticModel(
      name: "129 search appearances",
      icon: Icons.search,
      description: "See how often you appear in search results."),
];

//resources list

List<ProfileAnalyticModel> resourceslist = [
  ProfileAnalyticModel(
      name: "Creator mode",
      icon: Icons.cell_tower,
      description:
          "Get discovered, showcase content on your profile, and get access to creator tools"),
  ProfileAnalyticModel(
      name: "My Network",
      icon: Icons.people,
      description: "See and manage your connections and interests"),
];

List<ProfileExperienceModel> experienceList = [
  ProfileExperienceModel(
      name: "Freelance Developer",
      image: "images/experience/freelance.jpg",
      time: "Jan 2021 - Present · 1 yr 4 mos",
      description: "Freelance, self-employed · Full-time"),
  ProfileExperienceModel(
      name: "Freelance",
      image: "images/experience/upwork.jpg",
      time: "Oct 2020 - Present · 1 yr 7 mos",
      description: "Upwork · Full-time"),
];

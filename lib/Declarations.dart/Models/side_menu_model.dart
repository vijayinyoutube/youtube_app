import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideMenuModel {
  final String title;
  final Icon icons;

  SideMenuModel({
    required this.title,
    required this.icons,
  });
}

List<SideMenuModel> sideMenuItems = [
  SideMenuModel(
    title: "Home",
    icons: const Icon(
      Icons.home,
      color: Colors.white,
    ),
  ),
  SideMenuModel(
    title: "Explore",
    icons: const Icon(
      Icons.explore,
      color: Colors.white,
    ),
  ),
  SideMenuModel(
    title: "Subscriptions",
    icons: const Icon(
      Icons.video_label,
      color: Colors.white,
    ),
  ),
  SideMenuModel(
    title: "Library",
    icons: const Icon(
      Icons.video_settings,
      color: Colors.white,
    ),
  ),
  SideMenuModel(
    title: "History",
    icons: const Icon(
      Icons.history,
      color: Colors.white,
    ),
  ),
  SideMenuModel(
    title: "Your videos",
    icons: const Icon(
      Icons.videocam,
      color: Colors.white,
    ),
  ),
  SideMenuModel(
    title: "Watch later",
    icons: const Icon(
      Icons.timer,
      color: Colors.white,
    ),
  ),
  SideMenuModel(
    title: "General",
    icons: const Icon(
      Icons.category,
      color: Colors.white,
    ),
  ),
  SideMenuModel(
    title: "Show more",
    icons: const Icon(
      Icons.keyboard_arrow_down,
      color: Colors.white,
    ),
  ),
];

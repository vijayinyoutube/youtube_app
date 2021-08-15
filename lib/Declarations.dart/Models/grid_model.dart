import 'dart:ui';
import 'package:flutter/material.dart';

class DashboardModel {
  final String thumbnails;
  final String videoTitle;
  final String creatorName;
  final String channelName;
  final String view;
  final String publishDate;
  final Color avatarColor;

  DashboardModel({
    required this.thumbnails,
    required this.videoTitle,
    required this.creatorName,
    required this.channelName,
    required this.view,
    required this.publishDate,
    required this.avatarColor,
  });
}

List<DashboardModel> gridItems = [
  DashboardModel(
    thumbnails: "assets/Images/GridImages/image1.png",
    videoTitle: "Flutter Beginner's Guide",
    creatorName: "A",
    channelName: "channelName",
    view: '50',
    publishDate: "1 week ago",
    avatarColor: Colors.blue,
  ),
  DashboardModel(
    thumbnails: "assets/Images/GridImages/image2.png",
    videoTitle: "Flutter Beginner's Guide",
    creatorName: "B",
    channelName: "channelName",
    view: '1K',
    publishDate: "5 day ago",
    avatarColor: Colors.red,
  ),
  DashboardModel(
    thumbnails: "assets/Images/GridImages/image3.png",
    videoTitle: "Flutter Beginner's Guide",
    creatorName: "C",
    channelName: "channelName",
    view: '123',
    publishDate: "1 month ago",
    avatarColor: Colors.green,
  ),
  DashboardModel(
    thumbnails: "assets/Images/GridImages/image4.png",
    videoTitle: "Flutter Beginner's Guide",
    creatorName: "D",
    channelName: "channelName",
    view: '200',
    publishDate: "2 week ago",
    avatarColor: Colors.purple,
  ),
  DashboardModel(
    thumbnails: "assets/Images/GridImages/image1.png",
    videoTitle: "Flutter Beginner's Guide",
    creatorName: "A",
    channelName: "ChannelName",
    view: '50',
    publishDate: "1 week ago",
    avatarColor: Colors.blue,
  ),
  DashboardModel(
    thumbnails: "assets/Images/GridImages/image2.png",
    videoTitle: "Flutter Beginner's Guide",
    creatorName: "B",
    channelName: "ChannelName",
    view: '1K',
    publishDate: "5 day ago",
    avatarColor: Colors.red,
  ),
  DashboardModel(
    thumbnails: "assets/Images/GridImages/image3.png",
    videoTitle: "Flutter Beginner's Guide",
    creatorName: "C",
    channelName: "ChannelName",
    view: '123',
    publishDate: "1 month ago",
    avatarColor: Colors.green,
  ),
  DashboardModel(
    thumbnails: "assets/Images/GridImages/image4.png",
    videoTitle: "Flutter Beginner's Guide",
    creatorName: "D",
    channelName: "ChannelName",
    view: '200',
    publishDate: "2 week ago",
    avatarColor: Colors.purple,
  ),
];

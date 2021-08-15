import 'dart:math';
import 'package:flutter/material.dart';
import 'package:youtube_app/BreakPoints/break_points.dart';
import 'package:youtube_app/Declarations.dart/Models/grid_model.dart';
import 'package:youtube_app/Declarations.dart/constants.dart';
import 'package:youtube_app/GeneralWidgets/g_widgets.dart';

class GridData extends StatelessWidget {
  const GridData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 6,
      child: ResponsiveLayoutClass(
        mobileView: GridViewData(crossAxisCount: 1),
        tabletView: GridViewData(crossAxisCount: 2),
        desktopView: GridViewData(crossAxisCount: 4),
      ),
    );
  }
}

class GridViewData extends StatelessWidget {
  const GridViewData({
    Key? key,
    this.crossAxisCount = 4,
  }) : super(key: key);

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          itemCount: 52,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext ctx, index) {
            return buildGridItem(Random().nextInt(4));
          }),
    );
  }

  Widget buildGridItem(int index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              gridItems[index].thumbnails,
            ),
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: gridItems[index].avatarColor,
                  child: Text(gridItems[index].creatorName,
                      style: const TextStyle(
                          fontSize: 20.00, color: Colors.white)),
                ),
                const WidthSpacer(myWidth: kPadding * 3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gridItems[index].videoTitle,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const HeightSpacer(myHeight: kPadding * 2),
                    Text(
                      gridItems[index].channelName,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15.00,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          gridItems[index].view,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.00,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 3.5,
                          ),
                        ),
                        Text(
                          gridItems[index].publishDate,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.00,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      );
}

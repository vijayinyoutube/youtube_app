import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_app/BreakPoints/break_points.dart';
import 'package:youtube_app/Screens/Widgets/data_grid.dart';
import 'package:youtube_app/Screens/Widgets/headers.dart';
import 'package:youtube_app/Screens/Widgets/side_menu.dart';
import 'package:youtube_app/Screens/Widgets/top_tags.dart';
import 'package:youtube_app/controller/side_menu_cont.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<SideMenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: Column(
        children: [
          const Header(),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                if (ResponsiveLayoutClass.isDesktop(context)) const SideMenu(),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: const [
                      TopTags(),
                      GridData(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

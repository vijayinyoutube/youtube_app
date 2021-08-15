import 'package:flutter/material.dart';
import 'package:youtube_app/BreakPoints/break_points.dart';
import 'package:youtube_app/Declarations.dart/Models/side_menu_model.dart';
import 'package:youtube_app/Declarations.dart/constants.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int isSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutClass.isDesktop(context)
        ? Expanded(
            flex: 1,
            child: Drawer(
              child: Container(
                color: kSecondaryColor,
                child: buildSideBar(),
              ),
            ),
          )
        : Drawer(
            child: Container(
              color: kSecondaryColor,
              child: buildSideBar(),
            ),
          );
  }

  Widget buildSideBar() => ListView.builder(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        itemCount: sideMenuItems.length,
        itemBuilder: buildItem,
      );

  Widget buildItem(BuildContext context, int index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: MouseRegion(
          onHover: (PointerEvent event) {
            setState(() {
              isSelectedIndex = index;
            });
          },
          onExit: (PointerEvent event) {
            setState(() {
              isSelectedIndex = 0;
            });
          },
          child: Container(
            color: isSelectedIndex == index ? kaccentColor : Colors.transparent,
            child: !ResponsiveLayoutClass.isDesktop(context)
                ? sideMenuItems[index].icons
                : Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
                    child: ListTile(
                      leading: sideMenuItems[index].icons,
                      title: Text(
                        sideMenuItems[index].title,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 15.00),
                      ),
                    ),
                  ),
          ),
        ),
      );
}

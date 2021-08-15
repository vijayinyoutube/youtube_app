import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_app/BreakPoints/break_points.dart';
import 'package:youtube_app/Declarations.dart/constants.dart';
import 'package:youtube_app/Declarations.dart/image_files.dart';
import 'package:youtube_app/GeneralWidgets/g_widgets.dart';
import 'package:youtube_app/controller/side_menu_cont.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Container(
        width: double.infinity,
        height: 65,
        color: kSecondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ResponsiveLayoutClass.isDesktop(context)
                  ? const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: iconSize,
                    )
                  : IconButton(
                      onPressed: () {
                        context.read<SideMenuController>().menuControl();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: iconSize,
                      ),
                    ),
              const WidthSpacer(myWidth: kPadding),
              SizedBox(
                child: Image(
                  image: AssetImage(
                    dashboardImages[0],
                  ),
                ),
              ),
              const Spacer(flex: 2),
              if (ResponsiveLayoutClass.isDesktop(context))
                Expanded(flex: 4, child: buildSearchField()),
              if (ResponsiveLayoutClass.isDesktop(context))
                Container(
                  color: kaccentColor,
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 5.0, bottom: 5.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              const WidthSpacer(myWidth: kPadding * 3),
              if (ResponsiveLayoutClass.isDesktop(context))
                const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
              const Spacer(flex: 2),
              const Icon(
                Icons.video_call,
                color: Colors.white,
                size: iconSize,
              ),
              const WidthSpacer(myWidth: 25.00),
              const Icon(
                Icons.apps,
                color: Colors.white,
                size: iconSize,
              ),
              const WidthSpacer(myWidth: 25.00),
              const Icon(
                Icons.notifications,
                color: Colors.white,
                size: iconSize,
              ),
              const WidthSpacer(myWidth: 25.00),
              const CircleAvatar(
                radius: 16,
                child: Text("V", style: TextStyle(fontSize: 20.00)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearchField() => Padding(
        padding: const EdgeInsets.only(left: 10.00, top: 10.00, bottom: 10.00),
        child: TextFormField(
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(12.00),
            filled: true,
            fillColor: kdarkColor,
            hintText: "Search",
            hintStyle: const TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(0.00),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(0.00),
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
          ),
        ),
      );
}

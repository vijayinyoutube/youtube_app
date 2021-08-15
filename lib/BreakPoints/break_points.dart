import 'package:flutter/material.dart';

class ResponsiveLayoutClass extends StatelessWidget {
  const ResponsiveLayoutClass(
      {Key? key,
      required this.mobileView,
      required this.tabletView,
      required this.desktopView})
      : super(key: key);

  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 601 &&
      MediaQuery.of(context).size.width >= 1000;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return mobileView;
          } else if (constraints.maxWidth > 600 &&
              constraints.maxWidth <= 1000) {
            return tabletView;
          } else {
            return desktopView;
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

const int meduimScreenSize = 700;
const int smallScreenSize = 370;
const int largeScreenSize = 1200;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;
  final Widget mediumScreen;

  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    required this.smallScreen, required this.mediumScreen,
  });

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < meduimScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < largeScreenSize &&
      MediaQuery.of(context).size.width >= meduimScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      double _width = Constraints.maxWidth;
      if (_width >= largeScreenSize) {
        return largeScreen;
      } else if (_width <= meduimScreenSize) {
        return smallScreen;
      } else if (_width > meduimScreenSize && _width < largeScreenSize) {
        return mediumScreen;
      } else
        return smallScreen;
    });
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/core/routing/routes.dart';
import 'package:house_decoration_web/screens/contacts/contacts_view.dart';

import 'package:house_decoration_web/screens/home/large_home_view.dart';
import 'package:house_decoration_web/screens/home/medium_home_view.dart';
import 'package:house_decoration_web/screens/home/small_home_view.dart';
import 'package:house_decoration_web/screens/projects/projects_view.dart';
import 'package:house_decoration_web/screens/services/services_view.dart';

Route<dynamic> genrateRoute(RouteSettings setting) {
  switch (setting.name) {
    case homePageRoute:
      return _pageRoute(ResponsiveWidget(
          largeScreen: LargeHomeView(),
          smallScreen: SmallHomeView(),
          mediumScreen: MediumHomeView()));
    case projectsPageRoute:
      return _pageRoute(ProjectsView());
    case servicePageRoute:
      return _pageRoute(ServicesView());
    case contactsPageRoute:
      return _pageRoute(ContactsView());

    default:
      return _pageRoute(ResponsiveWidget(
          largeScreen: LargeHomeView(),
          smallScreen: SmallHomeView(),
          mediumScreen: MediumHomeView()));
  }
}

PageRoute _pageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

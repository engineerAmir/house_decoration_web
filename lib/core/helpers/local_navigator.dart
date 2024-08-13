
import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/routing/router.dart';
import 'package:house_decoration_web/core/routing/routes.dart';

Navigator localNavigator()=> Navigator(
  initialRoute: homePageRoute,
  key: navigationController.navigatorKey ,
  onGenerateRoute: genrateRoute,
);
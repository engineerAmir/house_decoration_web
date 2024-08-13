import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/controllers/flaot_button_controller.dart';
import 'package:house_decoration_web/core/controllers/home_controller.dart';
import 'package:house_decoration_web/core/controllers/menu_controller.dart';
import 'package:house_decoration_web/core/controllers/navigation_controller.dart';
import 'package:house_decoration_web/core/controllers/projects_controller.dart';
import 'package:house_decoration_web/core/controllers/switch_lang_controller.dart';
import 'package:house_decoration_web/core/controllers/tarnslate.dart';
import 'package:house_decoration_web/core/themes/themes.dart';
import 'package:house_decoration_web/layout.dart';

void main() {
  Get.put(AppMenuController());
  Get.put(NavigationController());
  Get.put(ProjectsController());
  Get.put(SwitchLangController());
  Get.put(HomeController());
  Get.put(FlaotButtonController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

       scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          /*Add this*/
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          //PointerDeviceKind.stylus,
          //PointerDeviceKind.unknown,
        },
      ),
      translations: Tarnslate(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: Locale('en'),
     //  supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale:Locale('en') ,
      theme: HAppThemes.darkTheme,
      home: Layout(),
    );
  }
}

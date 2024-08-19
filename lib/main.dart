import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/controllers/binding.dart';

import 'package:house_decoration_web/core/controllers/tarnslate.dart';
import 'package:house_decoration_web/core/themes/themes.dart';
import 'package:house_decoration_web/layout.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
       initialBinding: InitialScreenBindings(),

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
      title: 'House Decoration',
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
     //  supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale:const Locale('en') ,
      theme: HAppThemes.darkTheme,
      home: const Layout(),
    );
  }
}

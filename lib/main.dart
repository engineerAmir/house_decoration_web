import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/controllers/binding.dart';

import 'package:house_decoration_web/core/controllers/tarnslate.dart';
import 'package:house_decoration_web/core/themes/themes.dart';
import 'package:house_decoration_web/layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDH2cV_lTt9MbOqg8UnI2EtvEgg9h8oMh0",
          authDomain: "housedecoration-2024.firebaseapp.com",
          projectId: "housedecoration-2024",
          storageBucket: "housedecoration-2024.appspot.com",
          messagingSenderId: "101108715425",
          appId: "1:101108715425:web:f586e06210a2677e8485e0"));
  runApp(MyApp());
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
      title: 'House',
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
      //  supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale: const Locale('en'),
      theme: HAppThemes.darkTheme,
      home: const Layout(),
    );
  }
}

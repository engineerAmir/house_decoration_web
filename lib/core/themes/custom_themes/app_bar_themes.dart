import 'package:flutter/material.dart';
import 'package:multi_image_layout/multi_image_layout.dart';

class HAppBarTheme{
  HAppBarTheme._();


  static const LightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600 , color: Colors.black)
  );
  static const DarkAppBarTheme = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 10,
      backgroundColor: Color.fromARGB(126, 99, 94, 94)  ,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white, size: 24),
      actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
      titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600 , color: Colors.white)
  );


}
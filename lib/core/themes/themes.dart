import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/themes/custom_themes/app_bar_themes.dart';

class HAppThemes{
  HAppThemes._();


 static ThemeData lightTheme =ThemeData(
    appBarTheme: HAppBarTheme.LightAppBarTheme
  );

 static ThemeData darkTheme = ThemeData(
    appBarTheme: HAppBarTheme.DarkAppBarTheme,
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
   
      scaffoldBackgroundColor: darkbackGround
     
    
  );
}
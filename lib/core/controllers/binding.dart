import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/controllers/flaot_button_controller.dart';
import 'package:house_decoration_web/core/controllers/home_controller.dart';
import 'package:house_decoration_web/core/controllers/navigation_controller.dart';
import 'package:house_decoration_web/core/controllers/projects_controller.dart';
import 'package:house_decoration_web/core/controllers/switch_lang_controller.dart';



class InitialScreenBindings implements Bindings {

  InitialScreenBindings();

  @override
  void dependencies() {
    Get.put(() => FlaotButtonController());
    Get.put(() => HomeController());
    Get.put(() => MenuController());
    Get.put(() => NavigationController());
    Get.put(() => ProjectsController());

    Get.put(() => SwitchLangController());
  }
}
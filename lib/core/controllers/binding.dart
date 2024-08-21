import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/controllers/flaot_button_controller.dart';
import 'package:house_decoration_web/core/controllers/home_controller.dart';
import 'package:house_decoration_web/core/controllers/navigation_controller.dart';
import 'package:house_decoration_web/core/controllers/projects_controller.dart';
import 'package:house_decoration_web/core/controllers/service_controller.dart';
import 'package:house_decoration_web/core/controllers/switch_lang_controller.dart';

class InitialScreenBindings implements Bindings {
  InitialScreenBindings();

  @override
  void dependencies() {
    Get.lazyPut(() => FlaotButtonController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MenuController());
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => ProjectsController());
    Get.lazyPut(() => SwitchLangController());
    Get.lazyPut(() => ServiceController());
  }
}

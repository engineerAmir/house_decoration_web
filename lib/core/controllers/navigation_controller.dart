import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  static NavigationController instance = Get.find();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();


  Future <dynamic> navigatorTo(String routeName){
     
    return navigatorKey.currentState!.pushNamed(routeName);

  }

  goBack()=> navigatorKey.currentState!.pop();
}
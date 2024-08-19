import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchLangController extends GetxController{
  static SwitchLangController instance = Get.find();


  var selectedLang = 'en'; 


  switchLang(){
    if (selectedLang == 'en'){
      Get.updateLocale(const Locale('ar'));
      selectedLang = 'ar'; 
  
 
    }
    else if(selectedLang == 'ar'){
      Get.updateLocale(const Locale('en'));
      selectedLang = 'en';

    }

  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchLangController extends GetxController{
  static SwitchLangController instance = Get.find();


  var selectedLang = 'en'; 


  switchLang(){
    if (selectedLang == 'en'){
      Get.updateLocale(Locale('ar'));
      selectedLang = 'ar'; 
  
 
    }
    else if(selectedLang == 'ar'){
      Get.updateLocale(Locale('en'));
      selectedLang = 'en';

    }

  }
}
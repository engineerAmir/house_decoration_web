import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';

class HomeController extends GetxController {
  PageController controller = PageController();
  var curr = 0;
  bool isHover = false ;

  @override
  void onInit() {

   
    super.onInit();

    controller.addListener(() {
      curr = controller.page!.toInt();
     
      update();
    });
  }

  Future autoMove() async {
    await Future.delayed(Duration(seconds: 10), () {
      next();
    });
    // for (var i = 0; i < 60; i++) {
    //  await Future.delayed(Duration(seconds: 3), () {
    //     if (curr < 3) {
    //       next();
    //     } else if (curr == 3) {
    //       curr == 0;
    //     }
    //     update();
    //   });
    // }
  }

  void next() {
    if (curr < 3 && curr >= 0) {
      curr++;
      controller.jumpToPage(curr.toInt());
      update();
    } else {
      null;
    }
  }

  void back() {
    if (curr <= 3 && curr > 0) {
      curr--;
      controller.jumpToPage(curr.toInt());
      update();
    } else {
      null;
    }
  }

  void containerHover(val){
    isHover == val; 
  }


  var processDes = "".obs;

  void changeProcessDes( String currDes ){
     processDes.value = currDes;
    
  }
}

List slogan = [slogan1, slogan2, slogan3, slogan4];

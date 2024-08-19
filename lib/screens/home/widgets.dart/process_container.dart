// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';

class ProcessContainer extends StatelessWidget {
  final String num;
  final String title;
  final String des ;
  

  const ProcessContainer({super.key, required this.num, required this.title, required this.des,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        homeController.changeProcessDes(des);
       // print(homeController.processDes.value.toString().tr);
      },
      child: Stack(children: [
      
       
        
        TitleContainer(title: title, num: num, ),
      
      ]),
    );
  }
}

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
    required this.title,
    required this.num, 
    
  });

  final String title;
  final String num;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 530,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 35,
            child: Container(
                height: 40,
                width: 490,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    border: Border.all(width: 5, color: backGround)),
                child: Center(
                  child: Text(
                    title,
                    style: mediumText.copyWith(color: darkGold, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1000),
                border: Border.all(color: hover, width: 5),
              ),
              child: Center(
                child: Text(
                  num,
                  style: largeText.copyWith(fontWeight: FontWeight.bold,color: darkGold),
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}

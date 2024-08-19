import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';

import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';

import 'package:house_decoration_web/core/constants/text_style.dart';


class SmallHomeHeader extends StatelessWidget {
  final String assetName;
  final String title;
  final String subTitle ; 
  const SmallHomeHeader(
      {super.key, required this.title, required this.assetName, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Stack(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
          height: height /2,
          //: ResponsiveWidget.isLargeScreen(context)? _height-100 : ,
          width: width,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: backGround,
                    offset: Offset(10, 0),
                    spreadRadius: 10,
                    blurRadius: 10)
              ],
              image: DecorationImage(
                  image: AssetImage(assetName),
                  fit: BoxFit.cover,
                  opacity: 0.5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(welcome.tr, style: normalText.copyWith(fontWeight: FontWeight.bold, ), ),
              const SizedBox(height: 30,),
              Text(title,
                  style: normalText.copyWith(fontWeight: FontWeight.bold,color: darkGold) , maxLines: 4,),
                  Text(subTitle, style: const TextStyle(fontStyle: FontStyle.italic,fontSize: 10 ),)
            ],
          )),
      Positioned(
          left: 10,
          top: height / 5,
          child: IconButton(
            icon: Icon(
              switchLangController.selectedLang == 'en'
                  ? Icons.arrow_back_ios_rounded
                  : Icons.arrow_forward_ios_rounded,
            ),
            onPressed: () {
              homeController.back();
            },
          )),
      Positioned(
          right: 10,
          top: height / 5,
          child: IconButton(
            icon: Icon(switchLangController.selectedLang == 'en'
                ? Icons.arrow_forward_ios_rounded
                : Icons.arrow_back_ios_rounded),
            onPressed: () {
              homeController.next();
            },
          )),
    ]);
  }
}
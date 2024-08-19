// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';
import 'package:house_decoration_web/core/widgets/tail.dart';
import 'package:house_decoration_web/screens/home/large_home_view.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/home_projects_widget.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/small_home_header.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/our_service_widget.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/small_processes.dart';

class SmallHomeView extends StatelessWidget {
  const SmallHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(boxShadow: shadow),
            height: height / 2,
            child: PageView.builder(
                controller: homeController.controller,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => SmallHomeHeader(
                      title: pageHeader[index][0].toString().tr,
                      assetName: pageHeader[index][1].toString().tr,
                      subTitle: pageHeader[index][2].toString().tr,
                    )),
          ),
          SizedBox(
            height: 30,
          ),
          OurServicesWidget(),
           SizedBox(
            height: 50,
          ),
          HomeProjectsWidget(),
          SizedBox(height: 50,),
          Container(
            height: 50,
            decoration: BoxDecoration(
              boxShadow: shadow
            ),
            child: Center(
              child: Text(process.tr , style: largeText.copyWith(fontWeight: FontWeight.bold, color: hover),),
            ),
          ),
          SmallProcesses(),
          SizedBox(height: 50,),
          Tail()
        ]),
      ),
    );
  }
}

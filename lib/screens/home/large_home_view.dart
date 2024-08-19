import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/home_projects_widget.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/large_home_header.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/our_service_widget.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/processes.dart';

class LargeHomeView extends StatelessWidget {
  const LargeHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: height-50,
          child: PageView.builder(
              controller: homeController.controller,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => LargeHomeHeader(
                    title: pageHeader[index][0].toString().tr,
                    assetName: pageHeader[index][1].toString().tr,
                    subTitle: pageHeader[index][2].toString().tr,
                  )),
        ),
                const OurServicesWidget(),
                const SizedBox(height: 50,),
                const HomeProjectsWidget(),

                const SizedBox(height: 50,),
                const Processes()
                
      ]),
    );
  }
}

List<List> pageHeader = [
  [slogan1, Assets.assetsImagesRehabCityBedroom11, slogan1Title],
  [slogan2, Assets.assetsImagesWestSomidLandscape5, slogan2Title],
  [slogan3, Assets.assetsImagesWestSomidLandscape4, slogan3Title],
  [slogan4, Assets.assetsImagesAlmazaBedroom11, slogan4Title]
];

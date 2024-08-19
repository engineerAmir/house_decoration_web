// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/screens/home/large_home_view.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/home_projects_widget.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/large_home_header.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/medium_our_services_widget.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/our_service_widget.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/processes.dart';

class MediumHomeView extends StatelessWidget {
  const MediumHomeView({super.key});

  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      
      child: Column(children: [
        SizedBox(
          height: height,
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
                const OurServicesWidget()
                ,
                const SizedBox(height: 50,),
                const HomeProjectsWidget(),
                const SizedBox(height: 30,),
                const Processes()
      ]),
    );
  }
}
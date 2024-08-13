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
     var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      
      child: Column(children: [
        Container(
          height: _height,
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
                OurServicesWidget()
                ,
                SizedBox(height: 50,),
                HomeProjectsWidget(),
                SizedBox(height: 30,),
                Processes()
      ]),
    );
  }
}
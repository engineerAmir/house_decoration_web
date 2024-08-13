import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/core/routing/projects_routes.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/project_container.dart';

class HomeProjectsWidget extends StatelessWidget {
  const HomeProjectsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isLargeScreen(context)) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 300,
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                projects.tr,
                style: largeText.copyWith(
                    fontWeight: FontWeight.bold, color: darkGold),
              ),
              VerticalDivider(
              
          
              ),
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: projectsRoute[0][2],
                  title: projectsRoute[0][1].toString(),
                  projectName: projectsRoute[0][0],
                  route: projectsRoute[0][0]),
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: projectsRoute[1][2],
                  title: projectsRoute[1][1].toString(),
                  projectName: projectsRoute[1][0],
                  route: projectsRoute[1][0]),
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: projectsRoute[2][2],
                  title: projectsRoute[2][1].toString(),
                  projectName: projectsRoute[2][0],
                  route: projectsRoute[2][0]),
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: projectsRoute[3][2],
                  title: projectsRoute[3][1].toString(),
                  projectName: projectsRoute[3][0],
                  route: projectsRoute[3][0]),
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: Assets.assetsImagesArtCityLIVINGROOM1,
                  title: 'art city',
                  projectName: ArtCityImages,
                  route: ArtCityImages)
            ],
          ),
        ),
      );
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            projects.tr,
            style: largeText.copyWith(
                fontWeight: FontWeight.bold, color: darkGold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: projectsRoute[0][2],
                  title: projectsRoute[0][1].toString(),
                  projectName: projectsRoute[0][0],
                  route: projectsRoute[0][0]),
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: projectsRoute[1][2],
                  title: projectsRoute[1][1].toString(),
                  projectName: projectsRoute[1][0],
                  route: projectsRoute[1][0]),
              SizedBox(
                height: 50,
                width: 30,
              ),
            ],
          ),
          SizedBox(
            height: 50,
            width: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: projectsRoute[2][2],
                  title: projectsRoute[2][1].toString(),
                  projectName: projectsRoute[2][0],
                  route: projectsRoute[2][0]),
              SizedBox(
                height: 50,
                width: 30,
              ),
              ProjectContainer(
                  img: projectsRoute[3][2],
                  title: projectsRoute[3][1].toString(),
                  projectName: projectsRoute[3][0],
                  route: projectsRoute[3][0]),
              SizedBox(
                height: 50,
                width: 30,
              ),
             
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ProjectContainer(
                  img: Assets.assetsImagesArtCityLIVINGROOM1,
                  title: 'art city',
                  projectName: ArtCityImages,
                  route: ArtCityImages)
            ],
          )
        ],
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            projects.tr,
            style: largeText.copyWith(
                fontWeight: FontWeight.bold, color: darkGold),
          ),
          Divider(),
          SizedBox(
            height: 20,
            width: 200,
          ),
          ProjectContainer(
              img: projectsRoute[0][2],
              title: projectsRoute[0][1].toString(),
              projectName: projectsRoute[0][0],
              route: projectsRoute[0][0]),
          SizedBox(
            height: 50,
            width: 200,
            child: Divider(),
          ),
          ProjectContainer(
              img: projectsRoute[1][2],
              title: projectsRoute[1][1].toString(),
              projectName: projectsRoute[1][0],
              route: projectsRoute[1][0]),
          SizedBox(
            height: 50,
            width: 200,
            child: Divider(),
          ),
          ProjectContainer(
              img: projectsRoute[2][2],
              title: projectsRoute[2][1].toString(),
              projectName: projectsRoute[2][0],
              route: projectsRoute[2][0]),
          SizedBox(
            height: 50,
            width: 200,
            child: Divider(),
          ),
          ProjectContainer(
              img: projectsRoute[3][2],
              title: projectsRoute[3][1].toString(),
              projectName: projectsRoute[3][0],
              route: projectsRoute[3][0]),
          SizedBox(
            height: 50,
            width: 200,
            child: Divider(),
          ),
          ProjectContainer(
              img: Assets.assetsImagesArtCityLIVINGROOM1,
              title: 'art city',
              projectName: ArtCityImages,
              route: ArtCityImages)
        ],
      ),
    );
  }
}

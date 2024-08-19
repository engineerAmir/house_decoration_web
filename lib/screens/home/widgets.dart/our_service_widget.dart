import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/service_container.dart';

class OurServicesWidget extends StatelessWidget {
  const OurServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: dark, boxShadow: shadow),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ourServices.tr,
                  style: largeText.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Divider(),
           
            SizedBox(
             // alignment: Alignment.center,
              height: 600,
              width: double.infinity,
              child: SingleChildScrollView(
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  ServiceContainer(
                    title: residentialInteriorDesignTitle.tr,
                    subTitle: residentialInteriorDesign.tr,
                    description: residentialInteriorDesignDesc.tr,
                    color: true,
                    img: Assets.assetsImagesRehabCityBedroom14,
                  ),
                  ServiceContainer(
                    title: commercialInteriorDesignTitle.tr,
                    subTitle: commercialInteriorDesign.tr,
                    description: commercialInteriorDesignDesc.tr,
                    color: false,
                    img: Assets.assetsImagesAlmazaReception2,
                  ),
                  ServiceContainer(
                    title: spacePlanningLayoutTitle.tr,
                    subTitle: spacePlanningLayout.tr,
                    description: spacePlanningLayoutDesc.tr,
                    color: true,
                    img: Assets.assetsImagesWestSomidLandscape2,
                  ),
                  ServiceContainer(
                    title: customFurnitureDecorTitle.tr,
                    subTitle: customFurnitureDecor.tr,
                    description: customFurnitureDecorDesc.tr,
                    color: false,
                    img: Assets.assetsImagesWestSomidReception6,
                  ),
                  ServiceContainer(
                    title: renovationRemodelingTitle.tr,
                    subTitle: renovationRemodeling.tr,
                    description: renovationRemodelingDesc.tr,
                    color: true,
                    img: Assets.assetsImagesWestSomidReception2,
                  ),
                  ServiceContainer(
                    title: colorConsultationTitle.tr,
                    subTitle: colorConsultation.tr,
                    description: colorConsultationDesc.tr,
                    color: false,
                    img: Assets.assetsImagesAlmazaReception6,
                  ),
                  ServiceContainer(
                    title: homeStagingTitle.tr,
                    subTitle: homeStaging.tr,
                    description: homeStagingDesc.tr,
                    color: true,
                    img: Assets.assetsImagesMountainViewIvillaReception10,
                  ),
                  ServiceContainer(
                    title: constructionServicesTitle.tr,
                    subTitle: constructionServices.tr,
                    description: constructionServicesDesc.tr,
                    color: false,
                    img: Assets.assetsImagesAlmazaReception6,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

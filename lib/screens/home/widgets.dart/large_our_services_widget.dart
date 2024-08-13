import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';

import 'package:house_decoration_web/core/widgets/shadow.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/service_container.dart';

class LargeOurServicesWidget extends StatelessWidget {
  const LargeOurServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {

        return Container(
          decoration: BoxDecoration(
            color: dark,boxShadow: shadow
          ),
          child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ourServices.tr,
                      style: largeText.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     SizedBox(
                      width: 5,
                    ),
                    ServiceContainer(
                      title: residentialInteriorDesignTitle.tr,
                      subTitle: residentialInteriorDesign.tr,
                      description: residentialInteriorDesignDesc.tr,
                      color: true, img: Assets.assetsImagesAlmazaBedroom11,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ServiceContainer(
                      title: commercialInteriorDesignTitle.tr,
                      subTitle: commercialInteriorDesign.tr,
                      description: commercialInteriorDesignDesc.tr,
                      color: false, img: Assets.assetsImagesAlmazaReception2,
                    ), SizedBox(
                      width: 5,
                    ),
                    ServiceContainer(
                      title: spacePlanningLayoutTitle.tr,
                      subTitle: spacePlanningLayout.tr,
                      description: spacePlanningLayoutDesc.tr,
                      color: true, img: Assets.assetsImagesWestSomidLandscape3,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ServiceContainer(
                      title: customFurnitureDecorTitle.tr,
                      subTitle: customFurnitureDecor.tr,
                      description: customFurnitureDecorDesc.tr,
                      color: false, img: Assets.assetsImagesWestSomidLandscape2,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     SizedBox(
                      width: 5,
                    ),
                    ServiceContainer(
                      title: renovationRemodelingTitle.tr,
                      subTitle: renovationRemodeling.tr,
                      description: renovationRemodelingDesc.tr,
                      color: false, img: Assets.assetsImagesWestSomidReception6,
                    ),
                     SizedBox(
                      width: 5,
                    ),
                    ServiceContainer(
                      title: colorConsultationTitle.tr,
                      subTitle: colorConsultation.tr,
                      description: colorConsultationDesc.tr,
                      color: true, img: Assets.assetsImagesWestSomidReception2,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ServiceContainer(
                      title: homeStagingTitle.tr,
                      subTitle: homeStaging.tr,
                      description: homeStagingDesc.tr,
                      color: false, img: Assets.assetsImagesAlmazaReception6,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ServiceContainer(
                      title: constructionServicesTitle.tr,
                      subTitle: constructionServices.tr,
                      description: constructionServicesDesc.tr,
                      color: true, img: Assets.assetsImagesAlmazaMasterBedroomtoiletToilet1,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),SizedBox(
                  height: 50,
                ),
              ],
            ),
        );
          // else return Column(
          //   children: [
          //      Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           ourServices.tr,
          //           style: largeText.copyWith(fontWeight: FontWeight.bold),
          //         )
          //       ],
          //     ),
          //      ServiceContainer(
          //           title: residentialInteriorDesignTitle.tr,
          //           subTitle: residentialInteriorDesign.tr,
          //           description: residentialInteriorDesignDesc.tr,
          //           color: true,
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         ServiceContainer(
          //           title: commercialInteriorDesignTitle.tr,
          //           subTitle: commercialInteriorDesign.tr,
          //           description: commercialInteriorDesignDesc.tr,
          //           color: false,
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         ServiceContainer(
          //           title: spacePlanningLayoutTitle.tr,
          //           subTitle: spacePlanningLayout.tr,
          //           description: spacePlanningLayoutDesc.tr,
          //           color: false,
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         ServiceContainer(
          //           title: colorConsultationTitle.tr,
          //           subTitle: customFurnitureDecor.tr,
          //           description: customFurnitureDecorDesc.tr,
          //           color: true,
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //          ServiceContainer(
          //           title: renovationRemodelingTitle.tr,
          //           subTitle: renovationRemodeling.tr,
          //           description: renovationRemodelingDesc.tr,
          //           color: false,
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         ServiceContainer(
          //           title: colorConsultationTitle.tr,
          //           subTitle: colorConsultation.tr,
          //           description: colorConsultationDesc.tr,
          //           color: true,
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         ServiceContainer(
          //           title: homeStagingTitle.tr,
          //           subTitle: homeStaging.tr,
          //           description: homeStagingDesc.tr,
          //           color: false,
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         ServiceContainer(
          //           title: constructionServicesTitle.tr,
          //           subTitle: constructionServices.tr,
          //           description: constructionServicesDesc.tr,
          //           color: true,
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //   ],
          // );

        
  }
}

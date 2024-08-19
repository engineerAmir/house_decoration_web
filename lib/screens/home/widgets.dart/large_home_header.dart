import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';

import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';

import 'package:house_decoration_web/core/constants/text_style.dart';

class LargeHomeHeader extends StatelessWidget {
  final String assetName;
  final String title;
  final String subTitle;
  const LargeHomeHeader(
      {super.key,
      required this.title,
      required this.assetName,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Stack(children: [
      Container(
          height: height - 100,
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
              Text(
                welcome.tr,
                style: normalText.copyWith(fontWeight: FontWeight.bold),

              ),
              const SizedBox(
                height: 100,
              ),
              Text(title,
              textAlign: TextAlign.center,
              maxLines: 2,
                  style: largeText.copyWith(
                      fontWeight: FontWeight.bold, color: darkGold)),
              Text(
                subTitle,
                
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
              )
            ],
          )),
      Positioned(
          left: 40,
          top: height / 2,
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
          right: 40,
          top: height / 2,
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
//     return Obx(() {
//       return Stack(
//         children: [
//           Text(
//             homeController.i.value.toString(),
//             style: TextStyle(fontSize: 0),
//           ),
//           Visibility(
//               visible: homeController.i.value ==slogan1 ,
//               child: Expanded(
//                   child: Container(
//                 height: 300,
//                 decoration: BoxDecoration(
//                     boxShadow: shadow,
//                     image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(Assets.assetsImagesAlmazaBedroom11),
//                         opacity: 0.5)),
//                 child: Center(
//                   child: Text(homeController.i.toString().tr),
//                 ),
//               ))),
//           Visibility(
//               visible: homeController.i.value == slogan2,
//               child: Expanded(
//                   child: Container(
//                 height: 300,
//                 decoration: BoxDecoration(
//                     boxShadow: shadow,
//                     image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(Assets.assetsImagesAlmazaBedroom11),
//                         opacity: 0.5)),
//                 child: Center(
//                   child: Text(homeController.i.toString().tr),
//                 ),
//               ))),
//           Visibility(
//               visible: homeController.i.value == 2,
//               child: Expanded(
//                   child: Container(
//                 height: 300,
//                 decoration: BoxDecoration(
//                     boxShadow: shadow,
//                     image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(Assets.assetsImagesAlmazaBedroom11),
//                         opacity: 0.5)),
//                 child: Center(
//                   child: Text(slogan3.tr),
//                 ),
//               ))),
//           Visibility(
//               visible: homeController.i.value == 3,
//               child: Expanded(
//                   child: Container(
//                 height: 300,
//                 decoration: BoxDecoration(
//                     boxShadow: shadow,
//                     image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(Assets.assetsImagesAlmazaBedroom11),
//                         opacity: 0.5)),
//                 child: Center(
//                   child: Text(slogan4.tr),
//                 ),
//               ))),
//         ],
//       );
//     });
//   }
// }

// // ignore_for_file: unused_import

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:house_decoration_web/core/constants/assets.dart';
// import 'package:house_decoration_web/core/constants/colors.dart';
// import 'package:house_decoration_web/core/constants/controllers.dart';
// import 'package:house_decoration_web/core/constants/app_texts.dart';
// import 'package:house_decoration_web/core/controllers/home_controller.dart';
// import 'package:house_decoration_web/core/helpers/responsiveness.dart';
// import 'package:house_decoration_web/core/widgets/tail.dart';
// import 'package:house_decoration_web/screens/home/widgets.dart/home_header.dart';

// import 'package:house_decoration_web/screens/home/widgets.dart/our_services_widget.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//      var _height = MediaQuery.of(context).size.height;

//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//            height: ResponsiveWidget.isLargeScreen(context)? 800 : _height/3 +100,
//             child: Expanded(
//               child: ListView(
//                   controller: homeController.controller,
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     HomeHeader(
//                         title: slogan1.tr,
//                         assetName: Assets.assetsImagesPortoLivingroom1),
//                     HomeHeader(
//                         title: slogan2.tr,
//                         assetName: Assets.assetsImagesWestSomidMastertoilet2),
//                     HomeHeader(
//                         title: slogan3.tr,
//                         assetName: Assets.assetsImagesWestSomidLandscape4),
//                     HomeHeader(
//                         title: slogan4.tr,
//                         assetName: Assets.assetsImagesAlmazaBedroom11),
//                   ]),
//             ),
//           ),
//           OurServicesWidget()
        
          
      
//          // Tail()
//         ],
//       ),
//     );

//     //  Column
//     // (children: [
//     //   ListView.builder(
//     //     scrollDirection: Axis.horizontal,
//     //     itemCount: 4,
//     //     itemBuilder: (BuildContext context, int index) {
//     //       return HomeHeader(title: slogan1, assetName: Assets.assetsImagesAlmazaBedroom11,);
//     //     },
//     //   ),
//     // ]);
//   }
// }

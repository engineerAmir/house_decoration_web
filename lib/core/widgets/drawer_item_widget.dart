import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';


class DrawerItemWidget extends StatelessWidget {
  final String title;
  final String routeName;
  final bool isService;
  const DrawerItemWidget(
      {super.key,
      required this.title,
      required this.isService,
      required this.routeName});

  @override
  Widget build(BuildContext context) {
    // if (isService) {
    //   return ExpansionTile(
    //     title: Text(title),
    //     children: servicesList
    //         .map((item) => Container(
    //           child: ListTile(
    //                 title: Text(item),
    //                 onTap: () {
    //                   menuController.changeActiveItemTo(routeName);
    //                   Get.back();
    //                   navigationController.navigatorTo(routeName);
    //                 },
    //               ),
    //         ))
    //         .toList(),
    //   );
    // } else {

      return Container(
        child: ListTile(
          focusColor: darkGold,
          hoverColor: darkGold,

          title: Text(title),
          onTap: () {
            menuController.changeActiveItemTo(routeName);
            Get.back();
            navigationController.navigatorTo(routeName);
          },
        ),
      );
    }
  }
//}

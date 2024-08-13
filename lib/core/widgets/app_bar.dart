import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/core/routing/routes.dart';
import 'package:house_decoration_web/core/widgets/switch_lang_button.dart';

AppBar TopAppBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
  title: SwitchLangButton(),
  
    leading: Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(Assets.assetsImagesLogo))),
      ),
    ),
    actions: ResponsiveWidget.isLargeScreen(context)
        ?[
          AppBarRoutes(itemName: home.tr, PageRoute: homePageRoute, ),
          AppBarRoutes(itemName: projects.tr, PageRoute: projectsPageRoute,),
          AppBarRoutes(itemName: services.tr, PageRoute: servicePageRoute,),
          AppBarRoutes(itemName: contacts.tr, PageRoute: contactsPageRoute,),

        ]
        
        //  mainItemRoute.map((item) {
        //     int i = mainItemRoute.indexOf(item);
        //     return AppBarRoutes(
        //       itemName: home.tr,
        //     );
        //   }).toList()


        : [
            IconButton(
                onPressed: () {
                  key.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu))
          ]);

class AppBarRoutes extends StatelessWidget {
  final itemName;
  final PageRoute;
  const AppBarRoutes({
    super.key,
    required this.itemName,
    required this.PageRoute
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
        padding: EdgeInsets.only(left: 60),
        child: Expanded(
            child: Container(
          color: menuController.isActive(itemName) ? backGround : null,
          width: 100,
          height: double.infinity,
          child: InkWell(
            onTap: () {
              navigationController.navigatorTo(PageRoute);
              menuController.changeActiveItemTo(itemName);
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
 
                  //  menuController.activeItem.value == servicePageRoute
                  //     ? PopupMenuButton(
                  //         child: Text(
                  //           itemName,
                  //           style: normalText,
                  //         ),
                  //         itemBuilder: (BuildContext context) {
                  //           return servicesList
                  //               .map((item) => PopupMenuItem(child: Text(item)))
                  //               .toList();
                  //         })
                  //     :
                    child:   Text(
                          itemName,
                          style: normalText,
                        ),
                ),
                Expanded(child: SizedBox()),
                if (menuController.isActive(itemName))
                  Container(
                    height: 10,
                    width: double.infinity,
                    color: darkGold,
                    child: Text(
                      menuController.activeItem.value,
                      style: TextStyle(fontSize: 0),
                    ),
                  )
              ],
            ),
          ),
        ))));
  }
}

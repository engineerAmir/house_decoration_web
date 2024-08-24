import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/device_utility.dart';
import 'package:house_decoration_web/core/constants/social_links.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/routing/projects_routes.dart';
import 'package:house_decoration_web/core/routing/routes.dart';

class SmallTail extends StatelessWidget {
  const SmallTail({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(20),
      width: _width,
    
    
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(links.tr, style: mediumText,),
                TextButton(onPressed: () { flaotButtonController.facebook(); }, child: Text("Facebook link"),),
                TextButton(onPressed: () { flaotButtonController.insta(); }, child: Text("Instagram link"),),
                TextButton( onPressed: () { flaotButtonController.whatsapp(); }, child: Text("WhatsApp link"),),
                TextButton( onPressed: () { flaotButtonController.tiktok(); }, child: Text("Tiktok link"),),
      Text(about.tr, style: mediumText,),
                TextButton(onPressed: () { navigationController.navigatorTo(contactsPageRoute); }, child: Text(contacts.tr),),
                TextButton(onPressed: () { navigationController.navigatorTo(servicePageRoute);}, child: Text(services.tr),),
                TextButton( onPressed: () {navigationController.navigatorTo(projectsPageRoute); }, child: Text(projects.tr),),
                TextButton( onPressed: () { flaotButtonController.mail(); }, child: Text(mail.tr),),
      
              ],
            )
    );
  }
}

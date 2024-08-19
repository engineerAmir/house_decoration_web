import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:multi_image_layout/multi_image_layout.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: hover,
      children: [
        SpeedDialChild(
    
            //shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(100)) ,
            onTap: () => flaotButtonController.whatsapp(),
            backgroundColor: Colors.white.withOpacity(0),
            child: Image.asset(
              Assets.whatsAppIcon,
            )),
        SpeedDialChild(
            backgroundColor: Colors.white.withOpacity(0),
            onTap: () => flaotButtonController.facebook(),
            child: Image.asset(
              Assets.facebookIcon,
            )),
        SpeedDialChild(
            backgroundColor: Colors.white.withOpacity(0),
            onTap: () => flaotButtonController.insta(),
            child: Image.asset(Assets.instaIcon)),
        SpeedDialChild(
            backgroundColor: Colors.white.withOpacity(0),
            onTap: () =>flaotButtonController.tiktok(),
            child: Image.asset(Assets.tiktokIcon)),
        SpeedDialChild(
            backgroundColor: Colors.white.withOpacity(0),
            onTap:() => flaotButtonController.mail(),
            child: Image.asset(Assets.mailIcon)),
      ],
      child: Image.asset(Assets.socilaIcon),
    );
  }
}

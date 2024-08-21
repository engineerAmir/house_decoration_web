import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';

class ServiceHeader extends StatelessWidget {
  const ServiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 250,
      width: _width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center
          ,
          children: [
            Text(
              services.tr,
              style: largeText.copyWith(fontWeight: FontWeight.bold),
            ),
               Text(book.tr, style: normalText.copyWith(color: darkGold), maxLines: 3,),
          ],
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.assetsImagesAstoriaReception6),
              fit: BoxFit.cover,
              opacity: .3)),
    );
  }
}

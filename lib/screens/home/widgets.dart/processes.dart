import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/process_list.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/process_container.dart';

class Processes extends StatelessWidget {
  const Processes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: dark,
        boxShadow: shadow
      ),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(process.tr, style: largeText.copyWith(fontWeight: FontWeight.bold),)
            ],
          ),
          Divider(),
          SizedBox(
            height: 30,
          ),
          Row(
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 20,),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: processList
                      .map((item, ) => Column(
                        children: [
                          ProcessContainer(
                                num: processList.indexOf(item).toString(),
                                title: item[0].tr, des:  item[1],
                               // subTitle: item[1].tr,
                              ),
                              SizedBox(height: 30,)
                        ],
                      ))
                      .toList()),
                      SizedBox(width: 20,),
          
                      Obx(()=> Expanded(child: Text(homeController.processDes.value.tr, maxLines: 30, style: mediumText.copyWith(fontStyle: FontStyle.italic),))),
                      SizedBox(width: 10 ,),
            ],
          ),
        ],
      ),
    );
  }
}

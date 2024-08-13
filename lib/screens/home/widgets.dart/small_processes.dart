import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/process_list.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/small_process_container.dart';

class SmallProcesses extends StatelessWidget {
  const SmallProcesses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:processList
                      .map((item, ) => SmallProcessContainer(
                            num: processList.indexOf(item).toString(),
                            title: item[0].tr, des:  item[1].tr,
                           // subTitle: item[1].tr,
                          ))
                      .toList()
    );
  }
}
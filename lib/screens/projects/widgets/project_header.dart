import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';

class ProjectHeader extends StatelessWidget {
  const ProjectHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Obx(()=>Container(
      width: width ,
      height: 300,
      decoration: BoxDecoration(
        boxShadow: shadow,
        image: DecorationImage(image: AssetImage(projectsController.receptionImages[0]), fit: BoxFit.cover)
      ),
      child: Center(
        child: Text(projectsController.projectName.value, style: largeText.copyWith(fontWeight: FontWeight.bold),),
      ),
    ))
    ;
  }
}
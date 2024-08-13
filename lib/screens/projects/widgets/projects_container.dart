import 'package:flutter/material.dart';

import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';

class ProjectsContainer extends StatelessWidget {
  final int item;
  final String projectName;
  final String img;
  const ProjectsContainer({super.key, required this.item, required this.projectName, required this.img});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        height: 100 ,
        width: 200,
        decoration: BoxDecoration(
          
          border: Border.all(width: 5, color: darkGold),
          image: DecorationImage(image: AssetImage(img ), fit: BoxFit.cover, opacity: 0.6 ),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(
          child: Text(projectName, style: normalText.copyWith(color: darkGold, fontWeight: FontWeight.bold),),
        ),
      ),
      
      onTap: () {
        projectsController.changeProject(item);
      },
    ) ;
  }
}
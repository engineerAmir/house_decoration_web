// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:house_decoration_web/core/constants/controllers.dart';

import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/routing/routes.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';


class ProjectContainer extends StatelessWidget {
  final img;
  final title;
  final projectName;
  final route;
  const ProjectContainer(
      {super.key,
      required this.img,
      required this.title,
      required this.projectName,
      required this.route});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    bool isHover = false;
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        boxShadow: shadow,
          borderRadius: BorderRadius.circular(1000),
          image: DecorationImage(
              image: AssetImage(img), fit: BoxFit.cover, opacity: 0.9)),
      child: InkWell(
        onTap: () {
          navigationController.navigatorTo(projectsPageRoute);
          projectsController.changeProject(projectName);
          menuController.changeActiveItemTo(projectsPageRoute);
        },
        child: Center(
            child: Text(
          title,
          style: mediumText.copyWith(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

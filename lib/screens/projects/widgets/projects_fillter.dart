import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/controllers/projects_controller.dart';
import 'package:house_decoration_web/screens/projects/widgets/projects_container.dart';

class ProjectsFillter extends StatelessWidget {
  const ProjectsFillter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60),
      child: SingleChildScrollView(
        
       scrollDirection: Axis.horizontal,
      // physics: (),
        child: Row(
          children: projectsMap
              .map((item) => Row(
                children: [
                  ProjectsContainer(
                        item: projectsMap.indexOf(item).toInt(),
                        projectName: item['name'],
                        img: item['reception'][0].toString(),
                      ),
                      const SizedBox(
                        height: 30,
                        width: 100,
                        child: VerticalDivider(width: 5, color: Colors.white,),
                      )
                ],
              ))
              .toList(),
        ),
      ),
    );
  }
}

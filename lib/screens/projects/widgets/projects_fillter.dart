import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/controllers/projects_controller.dart';
import 'package:house_decoration_web/screens/projects/widgets/projects_container.dart';

class ProjectsFillter extends StatelessWidget {
  const ProjectsFillter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60),
      child: SingleChildScrollView(
        
       scrollDirection: Axis.vertical,
      // physics: (),
        child: Column(
          children: projectsMap
              .map((item) => Column(
                children: [
                  ProjectsContainer(
                        item: projectsMap.indexOf(item).toInt(),
                        projectName: item['name'],
                        img: item['reception'][0].toString(),
                      ),
                      SizedBox(
                        height: 30,
                        width: 100,
                        child: Divider(height: 5, color: Colors.white,),
                      )
                ],
              ))
              .toList(),
        ),
      ),
    );
  }
}

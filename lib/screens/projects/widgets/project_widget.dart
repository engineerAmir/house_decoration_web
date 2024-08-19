import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/screens/projects/widgets/image_view.dart';
import 'package:multi_image_layout/multi_image_layout.dart';

class ProjectWidget extends StatelessWidget {
  final image;

  const ProjectWidget({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
     double _width = MediaQuery.of(context).size.width;
    return Obx(
      () => SizedBox(
        width: _width - 200,
       
          child: StaggeredGrid.count(
        crossAxisCount: 4,
        children: projectsController.currentProject
            .map((item ) => InkWell(
                  onTap: () {
                   
                    Get.to(ImageView(inx: item.indexOf(item)));
                     projectsController.selectImage(item.indexOf(item).toDouble());
                    
                    
                  },
                  child: Image.asset(item),
                ))
            .toList(),
      )),
    );
  }
}

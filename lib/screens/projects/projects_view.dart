import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/core/widgets/small_tail.dart';
import 'package:house_decoration_web/core/widgets/tail.dart';

import 'package:house_decoration_web/screens/projects/widgets/project_header.dart';
import 'package:house_decoration_web/screens/projects/widgets/project_widget.dart';

import 'package:house_decoration_web/screens/projects/widgets/projects_fillter.dart';

import 'package:multi_image_layout/multi_image_layout.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
    
        children: [ProjectHeader(),
         ProjectsFillter(),
         ProjectWidget(),
          ResponsiveWidget.isLargeScreen(context)?
            Tail():
            SmallTail()
         
         ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/controllers/projects_controller.dart';
import 'package:house_decoration_web/screens/home/widgets.dart/project_container.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewer extends StatelessWidget {
  final item;
  const PhotoViewer({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      body: Stack(
        children: [
        
        PhotoView(
          imageProvider: AssetImage(item),
        ),
        Positioned(
            top: 30,
            left: 30,
            child: IconButton(onPressed: Get.back, icon: Icon(Icons.close))),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:photo_view/photo_view_gallery.dart';


class ImageView extends StatelessWidget {
  final int inx;
  const ImageView({super.key, required this.inx});

  @override
  Widget build(BuildContext context) {
    //PageController controller = PageController();
    return Obx(() => PhotoViewGallery(
              scrollPhysics:  const BouncingScrollPhysics(),
    
              pageOptions: projectsController.currentProject
      .map((item) =>
          PhotoViewGalleryPageOptions(imageProvider: AssetImage(item)))
      .toList(),
              loadingBuilder: (context, event) => const Center(
    child: SizedBox(
      width: 20.0,
      height: 20.0,
      // child: CircularProgressIndicator(
      //   value: event == null
      //       ? 0
      //       : event.cumulativeBytesLoaded / event.expectedTotalBytes,
      // ),
    ),
              ),
              //backgroundDecoration: widget.backgroundDecoration,
              pageController: projectsController.imageController,
              // onPageChanged: onPageChanged,
            ));
  }
}

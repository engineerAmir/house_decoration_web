import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewer extends StatelessWidget {
  final item ; 
  const PhotoViewer({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      body: Center(
        child:PhotoView(imageProvider: AssetImage(item),
          
        ) ,
      ),
    );
  }
}
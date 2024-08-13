import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/constants/assets.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';

class ContactHeaderPage extends StatelessWidget {
  const ContactHeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: shadow,
        
          image: DecorationImage(
            opacity: 0.5,
              image: AssetImage(Assets.assetsImagesAlmazaReception19),
              fit: BoxFit.cover)),
              child: Center(child: Text('Contacts', style: TextStyle(fontSize: 60),)),
    );
  }
}

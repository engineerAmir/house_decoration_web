import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final String icon ;
  final String title ;
  final Function() onTap;
  const IconText({super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Image(image: AssetImage(icon) , width: 20, height: 20,),
      
          TextButton(  onPressed: onTap, child: Text(title), )
      
        ],
      ),
    );
  }
}
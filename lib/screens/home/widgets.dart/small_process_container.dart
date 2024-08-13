import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';

class SmallProcessContainer extends StatelessWidget {
  final String num ;
  final String title;
  final String des ;
  const SmallProcessContainer({super.key, required this.num, required this.title, required this.des});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: hover,
              borderRadius: BorderRadius.circular(1000),
              border: Border.all(width: 5, color:darkGold )
            ),
            child: Center(
              child: Text(num, style: largeText.copyWith(fontWeight: FontWeight.bold , color: darkGold),),
            ),
          ),
          SizedBox(height: 20,),
          Text(title, style: mediumText.copyWith(color: darkGold, fontWeight: FontWeight.bold , ),maxLines: 2,textAlign: TextAlign.center,),
          SizedBox(height: 10,),
        
          SizedBox(height: 20,),
          Text(des, style: normalText.copyWith(fontStyle: FontStyle.italic), maxLines: 30,textAlign: TextAlign.center,),
            VerticalDivider(),
            VerticalDivider()
      
        ],
      ),
    );
  }
}
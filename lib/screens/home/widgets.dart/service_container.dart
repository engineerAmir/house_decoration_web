import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';

class ServiceContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String description;
  final bool color;
  final String img;
  const ServiceContainer(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.color,
      required this.img});

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Container(
     
      decoration: BoxDecoration(
        
        color: color ? backGround : darkGold,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset:  Offset(0, 50),
            color: color ? backGround.withOpacity(.5) : darkGold.withOpacity(.5),
            blurRadius: 50,
          ),
           BoxShadow(
            offset:  Offset(2, 0),
            color: color ? backGround.withOpacity(.5) : darkGold.withOpacity(.5),
            blurRadius: 5,
          ),
           BoxShadow(
            offset:  Offset(0, -2),
            color: color ? backGround.withOpacity(.5) : darkGold.withOpacity(.5),
            blurRadius: 5,
          ),
           BoxShadow(
            offset:  Offset(-2, 0),
            color: color ? backGround.withOpacity(.5) : darkGold.withOpacity(.5),
            blurRadius: 5,
          ),
        ],
        image: DecorationImage(
            opacity: 0.3, image: AssetImage(img), fit: BoxFit.fitHeight),
      ),
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(30),
      width:ResponsiveWidget.isSmallScreen(context)? 320 :500 ,
      height: ResponsiveWidget.isSmallScreen(context)? 500:500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: ResponsiveWidget.isLargeScreen(context)
        //     ? CrossAxisAlignment.start
        //     : CrossAxisAlignment.center,
        children: [
          Text(
            title,
            maxLines: 2,
            style: mediumText.copyWith(
              fontSize: 22,
                fontWeight: FontWeight.bold, color: color ? darkGold : hover),
          ),
        
          Text(
            subTitle,
            maxLines: 10,
            style: normalText.copyWith(
              
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),
        
          Text(
            description,
            maxLines: 120,
            style: normalText.copyWith(fontSize: ResponsiveWidget.isSmallScreen(context)? 14 :16 ),
            textAlign: TextAlign.center,
          ),
          // Container(
          //   height: 300,
          //   width: 300,
          //   decoration: BoxDecoration(
          //       image:
          //           DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          // )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';

import 'package:house_decoration_web/core/widgets/text_field_widget.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
  //  final double _width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
         color: darkGold,
        boxShadow: shadow),
     
      margin: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isLargeScreen(context) ? 100 :10),
      padding: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isLargeScreen(context) ? 100 :10 ),
      width: double.infinity,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('Send massage' , style: mediumText.copyWith(fontWeight: FontWeight.bold) ,),
          ),
          Row(
    
            children: [
              Expanded(
                child: TextFieldWidget(
                  labalText: 'Name',
                  scure: false,
                ),
              ),
               Expanded(
                child: TextFieldWidget(
                  labalText: 'Mail',
                  scure: false,
                ),
              ),
               Expanded(
                child: TextFieldWidget(
                  labalText: 'Phone',
                  scure: false,
                ),
              ),

              
             
            ],
          ),
          
           Expanded(
                child: TextFieldWidget(
                  labalText: 'Massage',
                  scure: false,
                  lines: 10,
                ),
              ),

              SizedBox(height: 40,)
        ],
      ),
    );
  }
}

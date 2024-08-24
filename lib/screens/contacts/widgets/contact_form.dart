import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/device_utility.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/core/controllers/contact_controller.dart';
import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/core/widgets/shadow.dart';

import 'package:house_decoration_web/core/widgets/text_field_widget.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    //  final double _width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: darkGold, boxShadow: shadow),
      margin: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isLargeScreen(context) ? 100 : 10),
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isLargeScreen(context) ? 100 : 10),
      width: double.infinity,
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Send massage',
              style: mediumText.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextFieldWidget(
                  labalText: 'Name',
                  scure: false,
                  con: contactController.nameCon,
                ),
              ),
              Expanded(
                child: TextFieldWidget(
                  labalText: 'Mail',
                  scure: false,
                  con: contactController.emailCon,
                ),
              ),
              Expanded(
                child: TextFieldWidget(
                  labalText: 'Phone',
                  scure: false,
                  con: contactController.phoneCon,
                ),
              ),
            ],
          ),
          Expanded(
            child: TextFieldWidget(
              labalText: 'Massage',
              scure: false,
              lines: 10,
              con: contactController.massageCon,
            ),
          ),
          TextButton(
              onPressed: contactController.isSubmitting.value
                  ? null
                  : () => contactController.send(),
              child: Text(
                send.tr,
                style: mediumText.copyWith(fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

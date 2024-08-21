import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_decoration_web/core/constants/app_texts.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';
import 'package:house_decoration_web/core/constants/text_style.dart';
import 'package:house_decoration_web/screens/services/widgets/home_state_drop_down.dart';
import 'package:house_decoration_web/screens/services/widgets/house_type_drop_down.dart';
import 'package:house_decoration_web/screens/services/widgets/input_field.dart';
import 'package:house_decoration_web/screens/services/widgets/service_header.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        child: Column(
          children: [

            ServiceHeader(),
         
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 3, color: darkGold)),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        personal_info.tr,
                        style: mediumText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                    labal: fullName.tr,
                    controller: serviceController.nameController,
                  ),
                  InputField(
                    labal: phone.tr,
                    controller: serviceController.phoneController,
                  ),
                  InputField(
                    labal: mail.tr,
                    controller: serviceController.emailController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        unit_info.tr,
                        style: mediumText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  HouseTypeDropDown(),
                  InputField(
                    labal: rooms_num.tr,
                    controller: serviceController.roomNumController,
                  ),
                  InputField(
                    labal: bathroom_nubmer.tr,
                    controller: serviceController.bathRoomController,
                  ),
                  InputField(
                    labal: area.tr,
                    controller: serviceController.areaController,
                  ),
                  HomeStateDropDown()
                ],
              ),
            ),
            if (serviceController.message.value.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  serviceController.message.value,
                  style: TextStyle(
                    color: serviceController.message.value.contains('successfully')
                        ? darkGold
                        : Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20,),
            Container(
              height: 50,
              width: 200,

              decoration: BoxDecoration(color: darkGold,
              borderRadius: BorderRadius.circular(30)
              ),
              child: InkWell(
                focusColor: hover,
              
                onTap: serviceController.isSubmitting.value
                    ? null
                    : () => serviceController.submitForm(),
                child: serviceController.isSubmitting.value
                    ? CircularProgressIndicator()
                    : Center(child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 70,)
          ],
        ),
      ),
    );
  }
}

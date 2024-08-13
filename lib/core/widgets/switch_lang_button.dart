import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:house_decoration_web/core/constants/controllers.dart';

class SwitchLangButton extends StatelessWidget {
  const SwitchLangButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){ 
    switchLangController.switchLang();
    
  }, child: Text('lang'.tr, style: TextStyle(color: Colors.white),));
  }
}
import 'package:get/get.dart';
import 'package:house_decoration_web/core/routing/routes.dart';

class AppMenuController extends GetxController {

  static AppMenuController instance = Get.find();

  var activeItem = homePageRoute.obs;

  var hoverItem = "".obs;

    changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
   
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }


  
}
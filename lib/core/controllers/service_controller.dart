import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceController extends GetxController {
  static ServiceController instance = Get.find();
  String alpha = "`qwertyuiop[]';lkjhgfdsazxcvnbnm,./!@#*()_)_+";
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final roomNumController = TextEditingController();
  final bathRoomController = TextEditingController();
  final areaController = TextEditingController();
  RxString selectedType = "Apartment".obs;
  RxString selectedState = "مازات على الطوب ".obs;

  CollectionReference forms = FirebaseFirestore.instance.collection('forms');

  final RxBool isSubmitting = false.obs;
  final RxString message = ''.obs;
  final RxString privetMassege = "".obs;

  void changeType(String value) {
    selectedType.value = value;
  }

  dynamic changeState(String value) {
    selectedState.value = value;
  }

  void submitForm() async {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty ||
        roomNumController.text.isEmpty ||
        bathRoomController.text.isEmpty ||
        areaController.text.isEmpty||
        phoneController.text.contains(alpha) ||
        roomNumController.text.contains(alpha) ||
        bathRoomController.text.contains(alpha) ||
        areaController.text.contains(alpha)) {
      message.value = 'Please fill out all fields';
      privetMassege.value = "must contain number";
      return;
    } 

    isSubmitting.value = true;
    try {
      await forms.add({
        'name': nameController.text,
        'email': emailController.text,
        'phone': emailController.text,
        'rooms number': roomNumController.text,
        'bathrooms number': bathRoomController.text,
        'area': areaController.text,
        'timestamp': FieldValue.serverTimestamp(),
      });
      message.value = 'Form submitted successfully!';
      nameController.clear();
      emailController.clear();
    } catch (e) {
      message.value = 'Failed to submit form';
    } finally {
      isSubmitting.value = false;
    }
  }
}

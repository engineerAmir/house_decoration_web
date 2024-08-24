import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController{
 static ContactController instance = Get.find();

 final TextEditingController nameCon = TextEditingController();
  final TextEditingController emailCon = TextEditingController();
  final TextEditingController phoneCon = TextEditingController();
  final TextEditingController massageCon = TextEditingController();

  CollectionReference sendMassage = FirebaseFirestore.instance.collection('massages');

 final RxString message = ''.obs;
  final RxBool isSubmitting = false.obs;

 void send()async {

   if (nameCon.text.isEmpty ||
        emailCon.text.isEmpty ||
        phoneCon.text.isEmpty ||
        massageCon.text.isEmpty 
      ) {
      message.value = 'Please fill out all fields';
    
      return;
    }
    
    isSubmitting.value = true;
await sendMassage.add(
  {
    'name':nameCon.text,
    'email':emailCon.text,
    'phone': phoneCon.text,
    'massage':massageCon.text,
    'timestamp': FieldValue.serverTimestamp(),
  }
);
  message.value = 'Form submitted successfully!';
  isSubmitting.value = false;
 }

 

}
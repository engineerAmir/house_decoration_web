import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController{
  ContactController instance = Get.find();

 final TextEditingController nameCon = TextEditingController();
  final TextEditingController emailCon = TextEditingController();
  final TextEditingController phoneCon = TextEditingController();
  final TextEditingController massageCon = TextEditingController();

  CollectionReference sendMassage = FirebaseFirestore.instance.collection('massages');



 void send()async {
await sendMassage.add(
  {
    'name':nameCon.text,
    'email':emailCon.text,
    'phone': phoneCon.text,
    'massage':massageCon.text
  }
);
 }

}
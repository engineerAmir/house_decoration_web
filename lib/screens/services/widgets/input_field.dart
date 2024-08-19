import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/constants/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final labal;
  InputField({this.controller, this.labal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "this is a required field";
          } else {
            return null;
          }
        },
        controller: controller,

        //onChanged: onChange ,
        // onFieldSubmitted: onFieldSubmitted ,
        //obscureText: scure ?? false ,
        //maxLines: lines ?? 1    ,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black,
          label: Text(labal),
          border: outlineBorderStyle(),
          enabledBorder: outlineBorderStyle(),
          focusedBorder: outlineBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineBorderStyle() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: lightGold));
}

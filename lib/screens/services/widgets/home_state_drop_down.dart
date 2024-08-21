

import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/constants/colors.dart';

class HomeStateDropDown extends StatefulWidget {
  const HomeStateDropDown({super.key});

  @override
  _MyAdvancedDropdownState createState() => _MyAdvancedDropdownState();
}

class _MyAdvancedDropdownState extends State<HomeStateDropDown> {
  String selectedState = 'مازات على الطوب ';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: DropdownButtonFormField<String>(
          value: selectedState,
          onChanged: (String? value) {
            setState(() {
              selectedState = value!;
            });
          },
          
          decoration: const InputDecoration(
            fillColor: Colors.black,
            labelText: 'Select type of unit ',
            border: OutlineInputBorder(

          
              borderSide: BorderSide(color: darkGold)
            ),
          ),
          items: [
            'مازات على الطوب '
            ,'نصف تشطيب ',
            'اخرى'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              
              value: value,
              child: Row(
                children: [
                  const Icon(Icons.info),
                  const SizedBox(width: 10),
                  Text(value),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
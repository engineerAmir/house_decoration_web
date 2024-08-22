

import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/constants/colors.dart';
import 'package:house_decoration_web/core/constants/controllers.dart';

class HouseTypeDropDown extends StatefulWidget {
  const HouseTypeDropDown({super.key});

  @override
  _MyAdvancedDropdownState createState() => _MyAdvancedDropdownState();
}

class _MyAdvancedDropdownState extends State<HouseTypeDropDown> {
 static String selectedType = "Apartment";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
        child: DropdownButtonFormField<String>(
          value: selectedType,
          onChanged: (String? value) {
            setState(() {
              selectedType = value!;
              serviceController.selectedType.value = selectedType;
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
            'Apartment',
            'Duplex apartment',
            'Roof apartment ',
            'Standalone ',
            'Twinhouse',
            'Townhouse'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              
              value: value,
              child: Row(
                children: [
                  const Icon(Icons.home_filled),
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
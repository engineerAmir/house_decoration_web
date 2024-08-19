import 'package:flutter/material.dart';
import 'package:house_decoration_web/screens/services/widgets/input_field.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.symmetric(horizontal: 300),
      child: Column(
        children: [
          InputField(labal: 'name',),
          InputField(labal: 'phone Number',),
          InputField(labal: 'E-mail',),
          InputField(labal: 'lol'
          ,),
      
        ],
      ),
    );
  }
}
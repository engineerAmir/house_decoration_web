// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/helpers/responsiveness.dart';
import 'package:house_decoration_web/screens/contacts/widgets/contact_form.dart';
import 'package:house_decoration_web/screens/contacts/widgets/contact_header_page.dart';
import 'package:house_decoration_web/screens/contacts/widgets/map.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ContactHeaderPage(),
          SizedBox(
            height: 100,
          ),
          ContactForm(),
          SizedBox(
            height: 100,
          ),
          GMapsHtml(
              url:
                  "http://maps.google.com/maps?q=30.05825, 30.95825&z=18&output=embed"),
                   
       SizedBox(height: 300,)
       
        ],
      ),
    );
  }
}
